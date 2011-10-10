Feature: Insert a new insurance
  In order to keep track my insurances
  As a broker
  I want to insert a new insurance

  Scenario: The one where I fill all required fields
    Given there is a client called "Nícolas Iensen"
    And there is a company called "Porto Seguros"
    And I am on the homepage
    And I select "2011-10-8" as the "Início" date
    And I select "Nícolas Iensen" from "Cliente"
    And I select "Auto" from "Ramo"
    And I select "Porto Seguro" from "Companhia"
    And I fill in the following:
      | Valor    | 1000           |
      | Comissão | 20             |
    When I press "Inserir Seguro"
    Then I should see "08/10/2011"
    And I should see "08/10/2012"
    And I should see "Nícolas Iensen"
    And I should see "Porto Seguros"
