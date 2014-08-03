Feature: Resultado

	Scenario: Mostrar pagina de resultado
	Given I open jugar and I send "HOLA"
		And I fill "usuario" with "Juan Carlos"
		And I press "Ingresar"
		And I select "Forever Alone"
		And I press "Jugar"
		And I should see "Ganaste"

	Scenario: Evaluar juego ganado
	Given I open jugar and I send "HOLA"
		And I fill "letra" with "L"
		And I press "Jugar"
		And I fill "letra" with "O"
		And I press "Jugar"
		And I fill "letra" with "A"
		And I press "Jugar"
		And I fill "letra" with "H"
		And I press "Jugar"
	Then I should see "Ganaste"

