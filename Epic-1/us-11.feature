Feature: Sección de universitario en la Landing Page

#Como universitario, quiero acceder a una sección dedicada a universitarios para unirme como universitario a EcoMovil

  Scenario Outline: Visualización de la Sección de Universitario
    Given el universitario se encuentre en la landing page, cuando se carga la página
    When se carga la página
    Then la sección dedicada a universitarios debe ser visible y accesible, mostrando información específica para universitarios
