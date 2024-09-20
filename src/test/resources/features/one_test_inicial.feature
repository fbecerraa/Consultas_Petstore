Feature: Consultas Petstore

  Background:
    Given url "https://petstore.swagger.io/v2/pet"

  @prueba
  Scenario: Consultar la mascota ingresada previamente
    Given path '2'
    When method get
    Then status 200