Feature: Logout
  In order to leave my computer alone and stay cool that nobody will mess with my account
  As a broker
  I want to logout

  @mock_authorized_user
  Scenario: The one where I'm logged in
    Given I am logged in
    When I follow "Sair"
    Then I should be on the login page
