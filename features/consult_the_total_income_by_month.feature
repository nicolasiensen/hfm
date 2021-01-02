Feature: Consult the total income by month
  In order to find out how much I earned
  As a broker
  I want to consult the total income by month

  @mock_authorized_user
  Scenario: The one where
    Given I am logged in
    When I select "Comissão" from "Tipo de relatório"
    Then I should be on the homepage
