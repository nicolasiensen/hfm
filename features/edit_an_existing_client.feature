Feature: Edit an existing client
  In order to keep my clients base up to date
  As a broker
  I want to edit an existing client

  Scenario: The one where there is a client
    Given there is a client called "Chico Lindo"
    And I am on the clients page
    And I follow "Editar"
    And I fill in the following:
      | Nome    | Chico Muito Lindo |
      | Email   | chicomuito@lindo.com |
    When I press "Atualizar Cliente"
    Then I should be on the clients page
    Then I should see "Chico Muito Lindo"
    Then I should see "chicomuito@lindo.com"
