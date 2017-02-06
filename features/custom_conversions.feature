@conversions
Feature: User able to manage custom conversions

  Scenario: User able to create new custom conversion
    Given I land on Home screen
    When I press on Menu icon
    And I press on My Conversions
    Then I press on Create Your First Conversion Button
    And I type "Power" as new conversion name
    When I press on NEW UNIT button on new conversion screen
    And I type "Horse power" as new unit name
    Then I type "HP" as new unit symbol
    And I type "1" as new unit value
    Then I press on checkmark icon on new unit screen
    When I press on NEW UNIT button on new conversion screen
    And I type "Mule power" as new unit name
    Then I type "MP" as new unit symbol
    And I type "0.5" as new unit value
    Then I press on checkmark icon on new unit screen
    Then I press on OK button on new conversions screen
    And I verify conversion with name "Power" on My Conversions screen