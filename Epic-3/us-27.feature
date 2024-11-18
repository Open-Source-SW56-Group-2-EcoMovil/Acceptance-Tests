Feature: Crear una nueva discusión en el foro de EcoMovil

  # Como usuario
  # Quiero crear una nueva discusión en el foro
  # Para que otros usuarios puedan ver y responder a mis comentarios

  Scenario: Crear una nueva discusión en el foro
    Given El usuario ha iniciado sesión y se encuentra en la sección de discusiones del foro
    When El usuario selecciona la opción para crear una nueva discusión
    And El usuario ingresa un título y un mensaje inicial
    And El usuario presiona el botón "Publicar"
    Then Se crea una nueva discusión visible para otros usuarios del foro
    And Otros usuarios pueden visualizar la discusión y agregar respuestas
