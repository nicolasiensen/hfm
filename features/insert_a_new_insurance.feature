Feature: Insert a new insurance
  In order to keep track my insurances
  As a broker
  I want to insert a new insurance

  @mock_authorized_user
  Scenario: The one where I fill all required fields
    Given I am logged in
    And there is a client called "Nícolas Iensen"
    And I am on the homepage
    And I select "8" from "insurance[start_at(3i)]"
    And I select "Outubro" from "insurance[start_at(2i)]"
    And I select "2019" from "insurance[start_at(1i)]"
    And I select "Nícolas Iensen" from "Cliente"
    And I select "Auto" from "Ramo"
    And I select "Porto Seguros" from "Companhia"
    And I fill in the following:
      | Valor    | 1000           |
      | Comissão | 20             |
    When I press "Criar Seguro"
    Then I should see "08/10/2019"
    And I should see "08/10/2020"
    And I should see "Nícolas Iensen"
    And I should see "Porto Seguros"
