Feature: Consultas Petstore

  Background:
    Given url "https://petstore.swagger.io/v2"

  @prueba
  Scenario: Añadir una mascota a la tienda
    Given path 'pet'
    And def bodyRequest = read('../json/post/addpet.json')
    And request bodyRequest
    When method post
    Then status 200

  @prueba
  Scenario: Consultar la mascota ingresada previamente
    Given path 'pet', 1
    When method get
    Then status 200
    And match response.name == '#present'
    And match response contains {name:'#string'}
    And match response contains {"name":"Firulais"}

  @prueba
  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
    Given path 'pet'
    And def bodyRequest2 = read('../json/put/updatepet.json')
    And request bodyRequest2
    When method put
    Then status 200

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