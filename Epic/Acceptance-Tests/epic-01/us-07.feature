Feature: Sección de planes en la Landing Page

#Como universitario o adquiriente quiero acceder a una sección de planes para poder elegir un plan y unirme a EcoMovil para comenzar la experiencia;

  Scenario Outline: Visualización de la Sección de Planes
    Given el universitario o adquiriente se encuentre en la Landing Page
    When se carga la página
    Then la sección de planes debe ser visible y accesible, mostrando claramente los diferentes planes disponibles con descripciones y precios, permitiendo al usuario seleccionar el plan que desee y seguir el proceso para unirse a EcoMovil
