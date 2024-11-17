Feature: Iniciar sesión en EcoMovil
  Como universitario y adquiriente
  Quiero iniciar sesión 
  Para ingresar a la aplicación

  Scenario: Iniciar sesión exitosamente con credenciales válidas
    Given El usuario está en la página de inicio de sesión (frontend)
    When Ingresa su correo electrónico "usuario@example.com"
      And Ingresa su contraseña "contraseña123"
      And Presiona el botón "Iniciar sesión"
    Then El sistema envía una solicitud POST a "/api/auth/login" con los datos del usuario (backend)
      And El servidor responde con un código 200 y un token de autenticación válido
      And El token se almacena en el almacenamiento local o en cookies seguras (frontend)
      And El sistema redirige al usuario a la página principal con el mensaje "Bienvenido, Usuario"

  Scenario: Iniciar sesión fallida con credenciales inválidas
    Given El usuario está en la página de inicio de sesión (frontend)
    When Ingresa su correo electrónico "usuario@example.com"
      And Ingresa una contraseña incorrecta "contraseñaIncorrecta"
      And Presiona el botón "Iniciar sesión"
    Then El sistema envía una solicitud POST a "/api/auth/login" con los datos del usuario (backend)
      And El servidor responde con un código 401 y un mensaje de error "Credenciales inválidas"
      And El mensaje de error se muestra en la página de inicio de sesión (frontend)

  Scenario: Validación de campos obligatorios
    Given El usuario está en la página de inicio de sesión (frontend)
    When Deja el campo de correo electrónico vacío
      And Ingresa una contraseña "contraseña123"
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "El correo electrónico es obligatorio" (frontend)
    
    When Ingresa su correo electrónico "usuario@example.com"
      And Deja el campo de contraseña vacío
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "La contraseña es obligatoria" (frontend)
