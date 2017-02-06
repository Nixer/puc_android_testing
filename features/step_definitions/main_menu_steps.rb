Given(/^I land on Home screen$/) do
  find_element(id: "Open navigation drawer")
  find_element(id: "More options")
  # @appium_driver.find_element(:xpath, "//*[@class='android.widget.ImageButton' and @index='0']")
  # @appium_driver.find_element(:xpath, "//*[@class='android.widget.ImageView' and @index='2']")
end

When(/^I press on Menu icon$/) do
  menu_button = @appium_driver.find_element(:xpath, "//*[@class='android.widget.ImageButton' and @index='0']")
  menu_button.click()
  sleep 1
end

When(/^I press on My Conversions$/) do
  text('My conversions').click
end

Then(/^I land on My Conversions screen$/) do
  text_exact 'My conversions'
end

Then(/^I select "([^"]*)" unit$/) do |unit_name|
  find_element_in_list(unit_name)
  find_element(id: "drawerCategoryName").text_exact("#{unit_name}").click
end


When(/^I press on History$/) do
  text('History').click
end

Then(/^I verify "([^"]*)" as (\d+)(?:st|nd|rd|th)? result in history list$/) do |name, index|
  i = index.to_i - 1
  #binding.pry
  result = exists{find_element(id: "history_conversion_list").find_elements(id: "history_single_line")[i].text_exact("#{name}")}
  fail("Element '#{name}' not found in list") if result == false
end

Then(/^I press X to remove (\d+)(?:st|nd|rd|th)? result in history list$/) do |index|
  i = index.to_i - 1
  find_element(id: "history_conversion_list").find_elements(id: "deleteIcon")[i].click
end

Then(/^I press on More options button$/) do
  find_element(id: "More options").click
end

Then(/^I press on Settings button$/) do
  find_element(id: "title").text_exact("Settings").click
end