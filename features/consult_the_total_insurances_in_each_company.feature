Feature: Consult the total insurances in each company
  In order to find out where I put most of my clients
  As a broker
  I want to consult the total insurances in each company

  Scenario: The one where there is a insurance
    Given I am on the homepage
    And there is an insurance in the "Porto Seguro"
    When I follow "Companhias"
    Then I should see "1 seguro na Porto Seguro"
