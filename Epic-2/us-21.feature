Feature: Visualización del perfil en EcoMovil

  # Como usuario autenticado
  # Quiero acceder a mi perfil de vendedor
  # Para visualizar mi información personal completa

  Scenario: Visualización de la información personal en el perfil de vendedor
    Given El usuario está autenticado y se encuentra en su página de perfil en EcoMovil
    When El usuario accede a la sección "Perfil del vendedor" desde el menú
    Then El sistema muestra la información personal completa del usuario
    And La página debe mostrar claramente:
      | Campo             | Valor esperado                   |
      | Nombre completo   | Nombre del usuario autenticado  |
      | Correo electrónico| Correo del usuario autenticado  |
      | Número de contacto| Contacto del usuario autenticado|
      | RUC               | RUC del usuario autenticado     |
