Feature: Remove an insurance
  In order to keep my insurances base clean
  As a broker
  I want to remove an insurance

  @omniauth_test
  Scenario: The one where there is an insurance
    Given there is an insurance
    And I am logged in
    When I follow "Remover"
    Then I should see "Foi! Seguro removido"
