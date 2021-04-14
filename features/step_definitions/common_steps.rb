
Given(/^I am on the homepage$/) do
  action.navigate_to_desktop_site
end

And(/^I search for "([^"]*)"$/) do |value|
  bunnings_driver.set_value_for_xpath(load_pages.home.search_container, value)
end

And(/^I click the search button$/) do 
  bunnings_driver.click_xpath(load_pages.home.search_container_button)
end

And(/^I select "([^"]*)" in "([^"]*)"$/) do |value, category|
  if category == "Products"
    bunnings_driver.click_xpath(load_pages.home.drop_down_result_products(value))
  elsif category == "D.I.Y Advice"
    bunnings_driver.click_xpath(load_pages.home.drop_down_result_diy(value))
  elsif category == "Services"
    bunnings_driver.click_xpath(load_pages.home.drop_down_result_services(value))
  end
end

When(/^I debug$/) do
  binding.pry
end

Then(/^I should see the text "([^"]*)"$/) do |text|
  verify_page_have_text(text)
end

And (/^the "([^"]*)" tab should be active$/) do |text|
  if text == "Our Range"
    verify_page_has_xpath(load_pages.search_result.our_range_tab) 
  elsif text == "D.I.Y. Advice"
    verify_page_has_xpath(load_pages.search_result.diy_advice)
  elsif text == "Service"
    verify_page_has_xpath(load_pages.search_result.services)  
  end
end



