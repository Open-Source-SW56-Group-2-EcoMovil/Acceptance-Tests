Feature: Agregar vehículos a través del menú en EcoMovil

  # Como usuario
  # Quiero agregar un vehículo a través del menú de EcoMovil
  # Para que el vehículo esté disponible para alquiler o venta

  Scenario: Agregar vehículo a la lista de vehículos disponibles
    Given El usuario está autenticado y se encuentra en el menú principal de EcoMovil
    When El usuario selecciona la opción "Agregar" en el menú
    And El usuario completa el formulario de agregar vehículo con la información requerida (tipo, descripción, fotos, precio)
    And El usuario hace clic en el botón "Publicar Vehículo"
    Then El vehículo debería ser añadido a su lista de vehículos disponibles para alquiler o venta
    And El usuario debería recibir una confirmación de que el vehículo se ha publicado exitosamente
