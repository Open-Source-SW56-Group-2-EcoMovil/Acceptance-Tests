Feature: Sección de Contacto en la Landing Page

#Como universitario o adquiriente quiero tener acceso a una sección de contacto clara y funcional para poder unirme a EcoMovil para comenzar la experiencia;

  Scenario Outline: Visualización de la Sección de Contacto
    Given el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then la sección de Contacto debe ser visible en la página con información clara sobre cómo comunicarse con el equipo de EcoMovil
