Feature: Consult the total income from a company
  In order to find out how much I'm colaborating with a company
  As a broker
  I want to consult the total income from a company

  Scenario: The one where there is a company with no insurance
    Given I am on the homepage
    And there is a company called "Porto Seguros"
    And I follow "Companhias"
    When I follow "Porto Seguros"
    Then I should see "Total já arrecadado: R$ 0,00"

  Scenario: The one where there is a company with some insurances
    Given I am on the homepage
    And there is an insurance in the "Porto Seguros" with the value of "1000"
    And there is an insurance in the "Porto Seguros" with the value of "1000"
    And I follow "Companhias"
    When I follow "Porto Seguros"
    Then I should see "Total já arrecadado: R$ 2.000,00"
