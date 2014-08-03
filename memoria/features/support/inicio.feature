Feature: inicio

	Scenario: Mostrar Saludo
	Given I open the web app
	Then I should see "Bienvenido al Juego"

	Scenario: Mostrar la secuencua oculta
	Given I open the web app
	When I fill "secuencia" with "AABB"
	And I press "ingresar"
	Then I should see "_ _ _ _"


	Scenario: Mostrar la secuencia oculatar de 5 caracteres
	Given I open the web app
	When I fill "secuencia" with "ZXCVB"
	And I press "ingresar"
	Then I should see "_ _ _ _"

