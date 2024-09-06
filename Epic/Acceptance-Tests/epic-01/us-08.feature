Feature: Sección de acerca de en la Landing Page

#Como universitario o adquiriente quiero tener acceso a una sección de “Acerca de” clara y funcional para conocer la historia y misión de EcoMovil;

  Scenario Outline: VVisualización de la Sección de Acerca de
    Given el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then  la sección de “Acerca de” debe ser visible y accesible, mostrando claramente la historia y misión de EcoMovil con una descripción concisa y atractiva
