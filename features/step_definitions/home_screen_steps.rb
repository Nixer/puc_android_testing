Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text
  fail("Expecting Left unit picker value to be #{value}, actual value is #{actual_picker_text}") if value != actual_picker_text
end


Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[1].text
  if value != actual_picker_text
    fail("Expecting Right unit picker value to be #{value}, actual value is #{actual_picker_text}")
  end
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  actual_state = find_element(id: "btn_show_all").enabled?

  if state == "enabled"
    fail("Expecting SHOW ALL button enabled") if actual_state == false
  elsif state == "disabled"
    fail("Expecting SHOW ALL button disabled") if actual_state == true
  end
end

When(/^I press on Clear button$/) do
  puts "Pressing clear button"
end

When(/^I press "([^"]*)" in application keyboard$/) do |target_value|
  buttons = target_value.split("")
  buttons.each do |but|
    find_element(id: "keypad").find_exact("#{but}").click
  end
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  actual_text = find_element(id: "target_value").text
  fail("Expecting result to be #{result}, actual result #{actual_text}") if result != actual_text
end

When(/^I press on Add to favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite Conversion button$/) do
  text('Favorite conversions').click
end

Then(/^I verify "([^"]*)" added to Favorite conversion$/) do |unit_type|
  actual_unit_type = find_element(id: "favorites_item_hint").text
  fail("Expecting Unit Type name to be #{unit_type}, actual name is #{actual_unit_type}") if unit_type != actual_unit_type
end

Then(/^I select "([^"]*)" from left unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[0].click
  find_element_in_list(value)
  find_element(id: "select_unit_spinner_menu_name").text_exact("#{value}").click
end

Then(/^I select "([^"]*)" from right unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[1].click
  find_element_in_list(value)
  find_element(id: "select_unit_spinner_menu_name").text_exact("#{value}").click
end


Then(/^I press on reverse picker values button$/) do
  find_element(id: "img_switch").click
end