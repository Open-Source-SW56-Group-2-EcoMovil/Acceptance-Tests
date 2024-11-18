Feature: Selección de plan en EcoMovil

  # Como usuario
  # Quiero seleccionar un plan de EcoMovil
  # Para proceder con el alquiler o la compra de un vehículo

  Scenario: Selección del plan y redirección a la página de pago
    Given El usuario se encuentra en la página de selección de planes de EcoMovil
    When El usuario visualiza los planes disponibles
    And El usuario hace clic en el botón "Elija un plan" para el plan deseado
    Then El usuario debería ser redirigido a la página de pasar por la caja del plan seleccionado
    And El usuario podrá proceder con el alquiler o la compra del vehículo
