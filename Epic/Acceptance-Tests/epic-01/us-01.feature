Feature: Barra de navegación en la Landing Page

#Como universitario o adquiriente quiero visualizar una landing page para conocer las funciones de la aplicación.

  Scenario Outline: Visualización de la Barra de Navegación
    Given el universitario o adquiriente se encuentre en la landing page
    When se muestra la barra de navegación
    Then podrá visualizar diversas secciones y botones
 
  Scenario Outline: Funcionalidad de Navegación
    Given el universitario o adquiriente accede a la landing page y visualice la barra de navegación
    When hace clic en cualquiera de los enlaces de la barra de navegación
    Then debe ser redirigido a la sección correspondiente de la aplicación
