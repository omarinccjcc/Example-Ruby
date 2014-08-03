Feature: Adivinar Letra

	Scenario: Mostrar secuencia para palabra HOLA
		Given I open the web app
		And I open jugar and I send "HOLA"
		Then I should see "_ _ _ _"

	Scenario: Mostrar secuencia para palabra POLLO
		Given I open the web app
		And I open jugar and I send "POLLO"
		Then I should see "_ _ _ _ _"

  Scenario: al ingresar letra A con palabra HOLA
		Given I open the web app
  	And I open jugar and I send "HOLA"
  	When I fill "letra" with "A"
  	And I press "jugar"
  	Then I should see "_ _ _ A"

 	Scenario: al ingresar letra L con palabra POLLO
		Given I open the web app
  	And I open jugar and I send "POLLO"
  	When I fill "letra" with "L"
  	And I press "jugar"
  	Then I should see "_ _ L L _"


 	Scenario: al ingresar letra L y luego P con palabra POLLO
		Given I open the web app
  	And I open jugar and I send "POLLO"
  	When I fill "letra" with "L"
  	And I press "jugar"
  	When I fill "letra" with "P"
  	And I press "jugar"
  	Then I should see "P _ L L _"

  Scenario: al ingresar 6 letras incorrectas, debemos ver que perdimos
  	Given I open the web app
  	And I open jugar and I send "HOLA"
  	When I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	And I fill "letra" with "F"
  	And I press "jugar"
  	Then I should see "Perdiste"

  Scenario: al ingresar 2 letras correctas A y H, 6 letras incorrectas F y la palabra es HOLA debemos ver que perdimos
    Given I open the web app
    And I open jugar and I send "HOLA"
    When I fill "letra" with "A"
    And I press "jugar"
    And I fill "letra" with "H"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    Then I should see "Perdiste"

  Scenario: al ingresar 2 letras correctas A y H, 6 letras incorrectas F y la palabra es POLLO debemos ver que perdimos
    Given I open the web app
    And I open jugar and I send "POLLO"
    When I fill "letra" with "P"
    And I press "jugar"
    And I fill "letra" with "L"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    And I fill "letra" with "F"
    And I press "jugar"
    Then I should see "Perdiste"