Feature: Iniciar sesión en EcoMovil

  # Como universitario y adquiriente
  # Quiero iniciar sesión
  # Para ingresar a la aplicación

  Scenario Outline: Iniciar sesión exitosamente con credenciales válidas
    Given El usuario está en la página de inicio de sesión (frontend)
    When Ingresa su <campo> con <valor>
      And Presiona el botón "Iniciar sesión"
    Then El sistema envía una solicitud POST a "/api/auth/login" con los datos del usuario (backend)
      And El servidor responde con un código 200 y un token de autenticación válido
      And El token se almacena en el almacenamiento local o en cookies seguras (frontend)
      And El sistema redirige al usuario a la página principal con el mensaje "Bienvenido, Usuario"

    Examples:
      | Campo              | Valor                  |
      | Correo electrónico | usuario@example.com    |
      | Contraseña         | contraseña123          |

  Scenario Outline: Iniciar sesión fallida con credenciales inválidas
    Given El usuario está en la página de inicio de sesión (frontend)
    When Ingresa su <campo> con un valor incorrecto "<valor>"
      And Presiona el botón "Iniciar sesión"
    Then El sistema envía una solicitud POST a "/api/auth/login" con los datos del usuario (backend)
      And El servidor responde con un código 401 y un mensaje de error "Credenciales inválidas"
      And El mensaje de error se muestra en la página de inicio de sesión (frontend)

    Examples:
      | Campo              | Valor                  |
      | Correo electrónico | usuario@example.com    |
      | Contraseña         | contraseñaIncorrecta   |

  Scenario Outline: Validación de campos obligatorios
    Given El usuario está en la página de inicio de sesión (frontend)
    When Deja el campo de <campo> vacío
      And Completa el otro campo correctamente
      And Presiona el botón "Iniciar sesión"
    Then El sistema muestra un mensaje de error "<mensaje_error>" (frontend)

    Examples:
      | Campo              | Mensaje_error                 |
      | Correo electrónico | El correo electrónico es obligatorio |
      | Contraseña         | La contraseña es obligatoria  |
