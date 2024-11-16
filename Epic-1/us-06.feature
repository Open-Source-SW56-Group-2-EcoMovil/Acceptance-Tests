Feature: Landing Page Responsive con diferentes dispositivos

#Como universitario o adquiriente quiero que la landing page sea responsive para que pueda visualizar y navegar por ella fácilmente desde cualquier dispositivo (móvil, tablet, o escritorio) sin pérdida de funcionalidad o legibilidad;
  
  Scenario Outline: Visualización en Diferentes Dispositivos
    Given el universitario o adquiriente acceda a la Landing Page desde un dispositivo móvil, tablet o escritorio
    When se carga la página
    Then la Landing Page debe ajustarse adecuadamente al tamaño de pantalla del dispositivo, manteniendo la funcionalidad completa y la legibilidad del contenido sin necesidad de hacer zoom o desplazamiento horizontal
