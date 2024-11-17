Feature: Implementar una sección de video para "About the Team"

  # Como usuario
  # Quiero ver un video sobre el equipo
  # Para conocer mejor al equipo detrás del producto

  Scenario: Visualizar video de "About the Team"
    Given El usuario está en la página de "About the Team" (frontend)
    When Visualiza la sección de video
    Then El sistema muestra el video correctamente con controles visibles (frontend)
      And El video se reproduce correctamente al hacer clic en el botón de reproducción (frontend)
      And El video tiene una duración máxima de 3 minutos (frontend)
