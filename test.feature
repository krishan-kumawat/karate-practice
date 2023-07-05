Feature:

Scenario:
    Given def a = 10
    And def b = 20
    * def json = """{"name" : "Krishan"}"""
    Then print json
    * match a+b == 30

