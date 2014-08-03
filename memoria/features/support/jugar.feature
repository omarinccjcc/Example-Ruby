Feature: Ingresar Secuencia y posiciones
        Scenario: Posiciones correctas
	Given I open the web app
	When I fill "secuencia" with "ZXCZB"
	And I press "ingresar"
        When I fill "posiciones" with "1,4"
        And I press "jugar"
	Then I should see "Z _ _ Z _"

        Scenario: Posiciones incorrectas y muestra el numero de error
	Given I open the web app
	When I fill "secuencia" with "ERROR"
	And I press "ingresar"
        When I fill "posiciones" with "1,5"
        And I press "jugar"
	Then I should see "E _ _ _ R"
	Then I should see "1 Error"

