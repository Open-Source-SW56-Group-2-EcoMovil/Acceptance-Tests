Feature: Buscar y filtrar vehículos disponibles

  # Como usuario
  # Quiero buscar y filtrar vehículos disponibles
  # Para encontrar el que mejor se adapta a mis necesidades

  Scenario Outline: Buscar vehículos por nombre o modelo
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Ingresa un término de búsqueda "<termino>"
      And Presiona el botón "Buscar"
    Then El sistema envía una solicitud GET a "/api/vehiculos?search=<termino>" (backend)
      And El servidor responde con un código 200 y una lista de vehículos que coinciden con el término buscado
      And El sistema muestra los vehículos filtrados en la página (frontend)

    Examples:
      | Termino              |
      | bicicleta eléctrica  |
      | scooter eléctrico    |

  Scenario Outline: Filtrar vehículos por categoría
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Selecciona la categoría "<categoria>" en el filtro
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?categoria=<categoria>" (backend)
      And El servidor responde con un código 200 y una lista de vehículos de la categoría seleccionada
      And El sistema muestra los vehículos filtrados en la página (frontend)

    Examples:
      | Categoria           |
      | Scooters eléctricos |
      | Bicicletas          |

  Scenario Outline: Filtrar vehículos por rango de precio
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Establece un rango de precio entre <min_precio> y <max_precio> soles
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?precio_min=<min_precio>&precio_max=<max_precio>" (backend)
      And El servidor responde con un código 200 y una lista de vehículos dentro del rango de precio
      And El sistema muestra los vehículos filtrados en la página (frontend)

    Examples:
      | Min_precio | Max_precio |
      | 50         | 200        |
      | 100        | 300        |

  Scenario Outline: Combinación de filtros (categoría y rango de precio)
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Selecciona la categoría "<categoria>"
      And Establece un rango de precio entre <min_precio> y <max_precio> soles
      And Presiona el botón "Aplicar filtros"
    Then El sistema envía una solicitud GET a "/api/vehiculos?categoria=<categoria>&precio_min=<min_precio>&precio_max=<max_precio>" (backend)
      And El servidor responde con un código 200 y una lista de vehículos que cumplen con ambos filtros
      And El sistema muestra los vehículos filtrados en la página (frontend)

    Examples:
      | Categoria   | Min_precio | Max_precio |
      | Bicicletas  | 100        | 300        |
      | Scooters    | 50         | 200        |

  Scenario Outline: No se encuentran vehículos disponibles
    Given El usuario está en la página de "Vehículos disponibles" (frontend)
    When Ingresa un término de búsqueda "<termino>"
      And Presiona el botón "Buscar"
    Then El sistema envía una solicitud GET a "/api/vehiculos?search=<termino>" (backend)
      And El servidor responde con un código 200 y una lista vacía
      And El sistema muestra un mensaje "No se encontraron vehículos que coincidan con tu búsqueda" (frontend)

    Examples:
      | Termino       |
      | coche volador |
      | tren rápido   |
