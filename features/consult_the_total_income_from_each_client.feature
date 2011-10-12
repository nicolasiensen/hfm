Feature: Consult the total income from each client
  In order to find out who is my best client
  As a broker
  I want to consult the total income from each client

  Scenario: The one where there is a client with no insurance
    Given I am on the homepage
    And there is a client called "Nícolas Iensen"
    When I follow "Quem é o meu melhor cliente?"
    Then I should see "Nícolas Iensen R$ 0,00"

  Scenario: The one where there is two clients with some insurances
    Given I am on the homepage
    And there is a client called "Nícolas Iensen"
    And there is an insurance for this client with the value of "1000" and commission of "10"
    And there is a client called "Chico Pinheiro"
    And there is an insurance for this client with the value of "1000" and commission of "20"
    When I follow "Quem é o meu melhor cliente?"
    Then I should see "Chico Pinheiro" before "Nícolas Iensen"
