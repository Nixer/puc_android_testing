@search @regression
Feature: As a User I would like to perform search

  Scenario: User able to search by existing unit conversion
    Given I land on Home screen
    Then I press on Search icon
    When I type "Area" to search field
    And I press on Search icon on soft keyboard
    Then I verify "Area" as current screen name
    And Left Unit picker value should be "Hectare"
    And Right Unit picker value should be "Square meter"