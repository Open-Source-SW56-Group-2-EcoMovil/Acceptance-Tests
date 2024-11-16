Feature: Sección de unirse en la Landing Page

#Como universitario o adquiriente quiero acceder a una sección para unirme a EcoMovil para poder registrar mi correo electrónico e inscribirme en EcoMovil;

  Scenario Outline: Visualización de la Sección de Unirse
    Given el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then la sección de “Unirse” debe ser visible y accesible para registrarse en EcoMovil
