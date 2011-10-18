Feature: Export my clients data into a csv file
  In order to use my clients data for email marketing
  As a broker
  I want to export my clients data into a csv file

  Scenario: The one where there is some clients
    Given I am on the clients page
    Then I should see "Exportar CSV"
