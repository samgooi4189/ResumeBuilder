
Given(/^I am on the signup page$/) do
  visit signup_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, data|
  fill_in(field.gsub(' ', '_'), :with => data)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^page should redirect to "(.+)" page$/) do | page |
  current_path.should == "#{page}"_path
end
