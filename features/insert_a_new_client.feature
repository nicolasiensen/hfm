Feature: Insert a new client
  In order to assign new insurances to new clients
  As a broker
  I want to insert a new client

  Scenario: The one where I fill the form correctly
    Given I am on the homepage
    And I fill in the following:
      | Nome  | Chico           |
      | Email | chico@engage.is |
    When I press "Inserir novo cliente"
    Then I should be on the insurances page
    And I should see "Feito! Cliente inserido"
