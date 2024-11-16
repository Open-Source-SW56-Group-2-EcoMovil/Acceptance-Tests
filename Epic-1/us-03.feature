Feature: Sección Footer en la Landing Page

#Como universitario o adquiriente quiero visualizar un footer en la landing page para acceder a información adicional;

  Scenario Outline: Visualización de la Sección Footer
    Given que el universitario o adquiriente se encuentre en la landing page
    When se carga la página
    Then la sección footer debe ser visible en la parte inferior de la página con términos de servicio y políticas de privacidad
