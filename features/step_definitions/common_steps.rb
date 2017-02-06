Then(/^I should see "([^"]*)" text$/) do |text|
  result = exists{text_exact("#{text}")}
  fail("Element with name #{text} not found") if result == false
end

Then(/^I verify "([^"]*)" as current screen name$/) do |conversion_name|
  sleep 2
  actual_unit_text = find_element(id: "action_bar").find_element(class: "android.widget.TextView").text
  fail("Expecting Screen name to be #{conversion_name}, actual name is #{actual_unit_text}") if conversion_name != actual_unit_text
end