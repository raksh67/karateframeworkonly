Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple post request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "Raksha RN", "job": "Software Test Engineer"}
    When method POST
    Then status 201
    And print response
