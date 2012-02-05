Feature: Insert a new client
  In order to assign new insurances to new clients
  As a broker
  I want to insert a new client

  @omniauth_test
  Scenario: The one where I fill the form correctly
    Given I am logged in
    And I follow "Clientes"
    And I fill in the following:
      | Nome  | Chico           |
      | Email | chico@engage.is |
    When I press "Inserir novo cliente"
    Then I should be on the clients page
    And I should see "Feito! Cliente inserido"
