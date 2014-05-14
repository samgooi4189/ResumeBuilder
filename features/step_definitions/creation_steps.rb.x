Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
  select(value, :from => field)
end

Then /^page should have (.+) message "([^\"]*)"$/ do |type, text|
  page.has_css?("p.#{type}", :text => text, :visible => true)
end
