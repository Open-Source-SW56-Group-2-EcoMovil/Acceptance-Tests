Feature: Sección de todos los derechos reservados en la Landing Page

#Como universitario o adquiriente, quiero ver una sección de derechos reservados para estar seguro de que EcoMovil protege mis derechos;

  Scenario Outline: Visualización de la Sección "Todos los derechos reservados"
    Given el universitario se encuentre en la landing page, cuando se carga la página
    When se carga la página
    Then la sección de “Todos los derechos reservados” debe ser visible al final de la página, mostrando de forma clara que los derechos del usuario están protegidos por EcoMovil
