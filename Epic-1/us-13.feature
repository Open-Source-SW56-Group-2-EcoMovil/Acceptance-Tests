Feature: Botón de empieza tu viaje en la Landing Page

#Como universitario o adquiriente, quiero encontrar un botón para empezar mi viaje en EcoMovil;

  Scenario Outline: Visualización del Botón "Empieza tu viaje
    Given el universitario se encuentre en la landing page, cuando se carga la página
    When se carga la página
    Then el botón “Empieza tu viaje” debe ser visible y accesible, destacándose en la página con un diseño atractivo que motive a los usuarios a comenzar su experiencia en EcoMovil
