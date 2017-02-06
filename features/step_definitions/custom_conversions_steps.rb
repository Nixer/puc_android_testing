Then(/^I press on Create Your First Conversion Button$/) do
  find_element(id: "btn_new_custom_conversion").click
end

Then(/^I type "([^"]*)" as new conversion name$/) do |conversion_name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(conversion_name)
end

When(/^I press on NEW UNIT button on new conversion screen$/) do
  find_element(id: "btn_new_custom_unit").click
end

When(/^I type "([^"]*)" as new unit name$/) do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then(/^I type "([^"]*)" as new unit symbol$/) do |symbol_name|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol_name)
end

Then(/^I type "([^"]*)" as new unit value$/) do |value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(value)
end

Then(/^I press on checkmark icon on new unit screen$/) do
  find_element(id: "action_confirm_custom_unit").click
end

Then(/^I press on OK button on new conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click
end

Then(/^I verify conversion with name "([^"]*)" on My Conversions screen$/) do |conversion_name|
  text_exact "#{conversion_name}"
end