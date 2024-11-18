Feature: Actualizar la información personal del perfil en EcoMovil

  # Como usuario
  # Quiero actualizar mi información personal en mi perfil
  # Para que mi información esté siempre al día

  Scenario: Actualizar la información personal del perfil
    Given El usuario ha iniciado sesión y accede a la página de su perfil
    When El usuario modifica su información personal (como nombre, correo electrónico o número de teléfono)
    And El usuario guarda los cambios
    Then La información actualizada se almacena correctamente en el sistema
    And El usuario ve un mensaje de confirmación indicando que el perfil ha sido actualizado exitosamente
