Feature: Iniciar sesión
  Como usuario registrado
  Quiero iniciar sesión en la aplicación
  Para acceder a mis servicios personalizados

  Scenario: Iniciar sesión exitosamente con credenciales válidas
    Given El usuario está en la página de inicio de sesión
    When Ingresa su correo electrónico "usuario@example.com"
      And Ingresa su contraseña "contraseña123"
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra la página principal con el mensaje "Bienvenido, Usuario"

  Scenario: Iniciar sesión fallida con credenciales inválidas
    Given El usuario está en la página de inicio de sesión
    When Ingresa su correo electrónico "usuario@example.com"
      And Ingresa una contraseña incorrecta "contraseñaIncorrecta"
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "Credenciales inválidas, intente nuevamente"

  Scenario: Validación de campos obligatorios
    Given El usuario está en la página de inicio de sesión
    When Deja el campo de correo electrónico vacío
      And Ingresa una contraseña "contraseña123"
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "El correo electrónico es obligatorio"

    When Ingresa su correo electrónico "usuario@example.com"
      And Deja el campo de contraseña vacío
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "La contraseña es obligatoria"