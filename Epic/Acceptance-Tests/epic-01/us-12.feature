Feature: 	Sección de conozca más sobre nosotros en la Landing Page

#Como universitario o adquiriente, quiero acceder a una sección de “Conozca más sobre nosotros” para obtener información detallada sobre EcoMovil;

  Scenario Outline: Visualización de la Sección “Conozca Más Sobre Nosotros”
    Given el universitario se encuentre en la landing page, cuando se carga la página
    When se carga la página
    Then la sección “Conozca más sobre nosotros” debe ser visible y accesible, mostrando información detallada sobre la aplicación
