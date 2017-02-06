@gestures @regression
Feature: User able to use gestures

  Scenario: User able to swipe to open side menu
    Given I land on Home screen
    When I swipe from left to right
    Then I verify "Unit Converter" as current screen name

  Scenario: User able to swipe to open calculator
    Given I land on Home screen
    When I swipe from right to left
    Then I verify "Calculator" as current screen name