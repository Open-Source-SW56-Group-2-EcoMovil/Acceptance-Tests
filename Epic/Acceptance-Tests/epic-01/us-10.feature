Feature: Sección de inscribirse en la Landing Page

#Como universitario o adquiriente quiero tener acceso a una sección de inscripción para poder ingresar a la aplicación de EcoMovil;

  Scenario Outline: Visualización de la Sección de Inscripción
    Given el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then la sección de “Inscribirse” debe ser visible y accesible
