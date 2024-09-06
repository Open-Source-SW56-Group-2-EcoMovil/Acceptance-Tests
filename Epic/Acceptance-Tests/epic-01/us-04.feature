Feature: Sección de Beneficios en la Landing Page

#Como universitario o adquiriente quiero ver una sección de cómo funciona EcoMovil, para entender cómo la aplicación puede mejorar mi experiencia ecológica y mi interacción con la aplicación;

  Scenario Outline: Visualización de la Sección de Beneficios
    Given el universitario o adquiriente se encuentre en la landing page
    When se carga la página
    Then la sección de “Cómo funciona” debe ser visible en la página con una descripción clara y atractiva de cómo EcoMovil puede mejorar la experiencia ecológica y la interacción con la aplicación
