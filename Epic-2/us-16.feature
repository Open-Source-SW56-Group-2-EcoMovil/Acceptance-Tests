Feature: Crear una cuenta en EcoMovil
  Como universitario
  Quiero crear mi cuenta registrándome 
  Para ingresar a la aplicación

  Scenario: Registro exitoso con datos válidos
    Given El usuario está en la página de registro (frontend)
    When Ingresa su nombre completo "María Pérez"
      And Ingresa un correo electrónico válido "maria@example.com"
      And Crea una contraseña válida "contraseña123"
      And Confirma la contraseña "contraseña123"
      And Acepta los términos y condiciones
      And Presiona el botón "Registrarse"
    Then El sistema envía una solicitud POST a "/api/auth/register" con los datos del usuario (backend)
      And El servidor responde con un código 201 y un mensaje "Registro exitoso"
      And El mensaje de confirmación se muestra en la página de registro (frontend)

  Scenario: Registro fallido por correo electrónico ya existente
    Given El usuario está en la página de registro (frontend)
    When Ingresa un correo electrónico existente "maria@example.com"
      And Completa los demás campos correctamente
      And Presiona el botón "Registrarse"
    Then El sistema envía una solicitud POST a "/api/auth/register" (backend)
      And El servidor responde con un código 409 y un mensaje "El correo electrónico ya está registrado"
      And El mensaje de error se muestra en la página de registro (frontend)

  Scenario: Validación de contraseñas
    Given El usuario está en la página de registro (frontend)
    When Ingresa una contraseña "123"
      And Completa los demás campos correctamente
      And Presiona el botón "Registrarse"
    Then El sistema muestra un mensaje de error "La contraseña debe tener al menos 6 caracteres" (frontend)

    When Ingresa una contraseña "contraseña123"
      And Ingresa una confirmación de contraseña "contraseña456"
      And Completa los demás campos correctamente
      And Presiona el botón "Registrarse"
    Then El sistema muestra un mensaje de error "Las contraseñas no coinciden" (frontend)
