@home_screen @regression
Feature: Tests for Home screen functionality

  Background:
    Given I land on Home screen
  @wip
  Scenario: Default values on Home screen is Foot and Centimeter
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"
    #Then Left Unit picker value should be "Inch"

  Scenario: Show all button should be disabled at launch
    Then Show All button should be disabled
    When I press "2" in application keyboard
    Then Show All button should be enabled

  @units_conversion
  Scenario Outline: Verify default conversion
    When I press "<target>" in application keyboard
    Then I should see result as "<result>"
  Examples:
  | target | result  |
  | 2      | 60.96   |
  | 3      | 91.44   |
  | 4      | 121.92  |
  | 0      | 0       |
  | 20     | 609.6   |

  @add_units_conversion
  Scenario: User able to add current conversion to Favorite List
    When I press on Add to favorites icon
    And I press on Menu icon
    Then I press on Favorite Conversion button
    Then I verify "Favorite conversions" as current screen name
    And I verify "Length" added to Favorite conversion

  Scenario Outline: User able to select different values from unit pickers
    Then I select "<value>" from left unit picker
    When I press "<target>" in application keyboard
    Then I should see result as "<result>"
  Examples:
    | value | target | result |
    | Inch  | 2      | 5.08   |
    | Yard  | 2      | 182.88 |

  Scenario: User able to convert different unit
    When I press on Menu icon
    Then I select "Volume" unit
    Then I select "Gallon U.K." from right unit picker
    When I press "2" in application keyboard
    Then I should see result as "1.6653"

  Scenario: User able to convert Speed values
    When I press on Menu icon
    Then I select "Speed" unit
    When I press "2" in application keyboard
    Then I should see result as "3.2187"

  Scenario: User able to reverse picker values
    Then I press on reverse picker values button
    Then Left Unit picker value should be "Centimeter"
    And Right Unit picker value should be "Foot"