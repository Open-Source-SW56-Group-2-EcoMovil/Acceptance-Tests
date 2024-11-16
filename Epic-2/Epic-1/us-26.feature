Feature: Buscar y filtrar vehículos disponibles
  Como usuario
  Quiero buscar y filtrar vehículos disponibles
  Para encontrar el que mejor se adapta a mis necesidades

  Scenario: Buscar vehículos por nombre o modelo
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Ingresa "bicicleta eléctrica" en la barra de búsqueda
      And Presiona el botón "Buscar"
    Then El sistema envía una solicitud GET a "/api/vehiculos?search=bicicleta eléctrica" (backend)
      And El servidor responde con un código 200 y una lista de vehículos que coinciden con el término buscado
      And El sistema muestra los vehículos filtrados en la página (frontend)

  Scenario: Filtrar vehículos por categoría
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Selecciona la categoría "Scooters eléctricos" en el filtro
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?categoria=Scooters eléctricos" (backend)
      And El servidor responde con un código 200 y una lista de vehículos de la categoría seleccionada
      And El sistema muestra los vehículos filtrados en la página (frontend)

  Scenario: Filtrar vehículos por rango de precio
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Establece un rango de precio entre 50 y 200 soles
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?precio_min=50&precio_max=200" (backend)
      And El servidor responde con un código 200 y una lista de vehículos dentro del rango de precio
      And El sistema muestra los vehículos filtrados en la página (frontend)

  Scenario: Combinación de filtros (categoría y rango de precio)
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Selecciona la categoría "Bicicletas"
      And Establece un rango de precio entre 100 y 300 soles
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?categoria=Bicicletas&precio_min=100&precio_max=300" (backend)
      And El servidor responde con un código 200 y una lista de vehículos que cumplen con ambos filtros
      And El sistema muestra los vehículos filtrados en la página (frontend)

  Scenario: No se encuentran vehículos disponibles
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Ingresa "coche volador" en la barra de búsqueda
      And Presiona el botón "Buscar"
    Then El sistema envía una solicitud GET a "/api/vehiculos?search=coche volador" (backend)
      And El servidor responde con un código 200 y una lista vacía
      And El sistema muestra un mensaje "No se encontraron vehículos que coincidan con tu búsqueda" (frontend)
