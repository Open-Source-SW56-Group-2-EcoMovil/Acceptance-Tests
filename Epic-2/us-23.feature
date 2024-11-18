Feature: Foro de Contacto en EcoMovil

  # Como usuario autenticado
  # Quiero acceder al foro de contacto
  # Para ver una lista de propietarios que han publicado sus datos de contacto

  Scenario: Visualización de la lista de propietarios en el foro de contacto
    Given El usuario está autenticado y se encuentra en la página del foro de contacto en EcoMovil
    When El usuario accede a la sección "Foro de Contacto" desde el menú
    Then El sistema muestra una lista de propietarios que han publicado sus datos de contacto a través de WhatsApp
    And Cada propietario debe mostrar su nombre y el enlace o número de contacto de WhatsApp
