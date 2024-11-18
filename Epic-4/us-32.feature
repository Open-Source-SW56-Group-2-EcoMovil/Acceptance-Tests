Feature: Implementar la internacionalización de la Aplicación

  Como usuario
  Quiero poder cambiar el idioma de la aplicación
  Para usar la aplicación en el idioma que me resulte más cómodo

  Scenario Outline: Cambiar idioma de la aplicación
    Given El usuario está en cualquier página de la aplicación (frontend)
    When El usuario selecciona el idioma "<idioma>" en el menú de idiomas
    Then El sistema cambia el idioma de la aplicación a "<idioma>" (frontend)
      And Todos los textos en la interfaz se actualizan correctamente al idioma seleccionado (frontend)

    Examples:
      | Idioma    |
      | Español   |
      | Inglés    |
