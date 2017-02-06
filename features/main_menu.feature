@main_menu @regression
Feature: As a user I would like to convert my Units

  Scenario: When I tap on menu icon, I should see left side menu
    Given I land on Home screen
    When I press on Menu icon
    Then I verify "Unit converter" as current screen name

  Scenario: I should be able to open My conversions screen
    Given I land on Home screen
    When I press on Menu icon
    And I press on My Conversions
    Then I land on My Conversions screen

  Scenario: I should be able to see conversion history and clean up results
    Given I land on Home screen
    When I press on Menu icon
    And I press on History
    Then I verify "History" as current screen name
    And I should see "No history right now" text
    Then I press on Menu icon
    Then I select "Length" unit
    When I press "2" in application keyboard
    When I press on Menu icon
    And I press on History
    Then I verify "History" as current screen name
    And I verify "Length" as 1st result in history list
    Then I press X to remove 1st result in history list
    And I should see "No history right now" text

  @wip
  Scenario: User able to open Settings menu
    Given I land on Home screen
    Then I press on More options button
    And I press on Settings button
    Then I verify "Settings" as current screen name