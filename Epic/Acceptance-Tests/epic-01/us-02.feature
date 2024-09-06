Feature: Sección Hero en la Landing Page

#Como universitario o adquiriente quiero ver una sección hero atractiva y clara al acceder a la Landing Page para entender el valor de la aplicación y decidir si deseo saber más sobre ella;

  Scenario Outline: Visualización de la Sección Hero
    Given que el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then la sección hero debe ser visible en la parte superior de la página con un diseño atractivo y claro
