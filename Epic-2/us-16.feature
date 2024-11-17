Feature: Crear una cuenta en EcoMovil

  # Como universitario
  # Quiero crear mi cuenta registrándome
  # Para ingresar a la aplicación

  Scenario Outline: Registro exitoso con datos válidos
    Given El usuario está en la página de registro (frontend)
    When Ingresa su <campo> con <valor>
      And Acepta los términos y condiciones
      And Presiona el botón "Registrarse"
    Then El sistema envía una solicitud POST a "/api/auth/register" con los datos del usuario (backend)
      And El servidor responde con un código 201 y un mensaje "Registro exitoso"
      And El mensaje de confirmación se muestra en la página de registro (frontend)

    Examples:
      | Campo               | Valor                  |
      | Nombre completo     | María Pérez            |
      | Correo electrónico  | maria@example.com      |
      | Contraseña          | contraseña123          |
      | Confirmar contraseña| contraseña123          |

  Scenario Outline: Registro fallido por correo electrónico ya existente
    Given El usuario está en la página de registro (frontend)
    When Ingresa un <campo> con un valor ya existente "<valor>"
      And Completa los demás campos correctamente
      And Presiona el botón "Registrarse"
    Then El sistema envía una solicitud POST a "/api/auth/register" (backend)
      And El servidor responde con un código 409 y un mensaje "El correo electrónico ya está registrado"
      And El mensaje de error se muestra en la página de registro (frontend)

    Examples:
      | Campo               | Valor             |
      | Correo electrónico  | maria@example.com |

  Scenario Outline: Validación de contraseñas
    Given El usuario está en la página de registro (frontend)
    When Ingresa una contraseña "<contraseña>"
      And Completa los demás campos correctamente
      And Presiona el botón "Registrarse"
    Then El sistema muestra un mensaje de error "<mensaje_error>" (frontend)

    Examples:
      | Contraseña      | Mensaje_error                                    |
      | 123             | La contraseña debe tener al menos 6 caracteres  |
      | contraseña123   | Las contraseñas no coinciden                    |
