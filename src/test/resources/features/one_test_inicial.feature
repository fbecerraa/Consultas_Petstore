Feature: Consultas Petstore

  Background:
    Given url "https://petstore.swagger.io/v2"

  @prueba
  Scenario Outline: Añadir una mascota a la tienda
    Given path 'pet'
    And request {"id": "<id>", "category": {"id": 0, "name": "CategoriaKarate"}, "name": "<nombre>", "photoUrls": ["https://www.fotografiaprofesional.mx/wp-content/uploads/2019/12/sesiones-para-mascotas.jpg"], "tags": [{"id": 0, "name": "string"}], "status": "available"}
    When method post
    Then status 200

    Examples:
      | id | nombre        |
      | 1  | Firulais      |

  @prueba
  Scenario: Consultar la mascota ingresada previamente
    Given path 'pet', 1
    When method get
    Then status 200
    And match response.name == '#present'
    And match response contains {name:'#string'}
    And match response contains {"name":"Firulais"}

  @prueba
  Scenario Outline: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
    Given path 'pet'
    And request {"id": "<id>", "category": {"id": 0, "name": "CategoriaKarate"}, "name": "<nombre>", "photoUrls": ["https://www.fotografiaprofesional.mx/wp-content/uploads/2019/12/sesiones-para-mascotas.jpg"], "tags": [{"id": 0, "name": "string"}], "status": "sold"}
    When method put
    Then status 200

    Examples:
      | id | nombre        |
      | 1  | Rocky         |

  @prueba
  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
    And print response
    And def lastIndex = response.length - 1
    And def petName = response[lastIndex].name
    And print 'Nombre de la mascota es:', petName