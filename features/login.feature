Feature: Login
  In order to have private access to my data
  As a broker
  I want to login

  @mock_authorized_user
  Scenario: The one where I'm not logged in
    Given I am on the login page
    When I follow "Sim! Quero me identificar com o Facebook"
    Then I should be on the homepage
    And I should see "Nícolas"

  @mock_unauthorized_user
  Scenario: The one where I'm not authorized
    Given I am on the login page
    When I follow "Sim! Quero me identificar com o Facebook"
    Then I should be on the access denied page
