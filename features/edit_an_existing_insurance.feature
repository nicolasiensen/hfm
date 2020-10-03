Feature: Edit an existing insurance
  In order to redo an incorrect insurance
  As a broker
  I want to edit an existing insurance

  @mock_authorized_user
  Scenario: The one where I fill the form correctly
    Given I am logged in
    And there is an insurance
    And there is a client called "Bruno"
    And I am on the homepage
    And I follow "Editar"
    And I select "8" from "insurance[start_at(3i)]"
    And I select "Outubro" from "insurance[start_at(2i)]"
    And I select "2020" from "insurance[start_at(1i)]"
    And I select "Bruno" from "Cliente"
    And I select "Auto" from "Ramo"
    And I select "Mapfre" from "Companhia"
    And I fill in the following:
      | Valor    | 1000           |
      | Comissão | 20             |
    When I press "Atualizar Seguro"
    Then I should be on the insurances page
    Then I should see "Woohoo! Seguro atualizado"
    Then I should see "08/10/2020"
    Then I should see "08/10/2021"
    Then I should see "Bruno"
    Then I should see "Mapfre"
