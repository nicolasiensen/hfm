Feature: Edit an existing insurance
  In order to redo an incorrect insurance
  As a broker
  I want to edit an existing insurance

  Scenario: The one where I fill the form correctly
    Given there is an insurance
    And there is a client called "Bruno"
    And there is a company called "Mapfre"
    And I am on the homepage
    And I follow "Editar"
    And I select "2011-10-8" as the "Início" date
    And I select "Bruno" from "Cliente"
    And I select "Auto" from "Ramo"
    And I select "Mapfre" from "Companhia"
    And I fill in the following:
      | Valor    | 1000           |
      | Comissão | 20             |
    When I press "Atualizar Seguro"
    Then I should be on the insurances page
    Then I should see "Woohoo! Seguro atualizado"
    Then I should see "08/10/2011"
    Then I should see "08/10/2012"
    Then I should see "Bruno"
    Then I should see "Mapfre"
