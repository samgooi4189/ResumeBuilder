require 'uri'
require 'cgi'

module RegisterHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(RegisterHelpers)

Given /^I am on the signup page$/ do
  visit signup_path
end

Given /^I am on the login page$/ do
  visit signin_path
end

Given /^I have a user with name "([^"]*)" and password "([^"]*)"$/ do |name, password|
  User.create!(:name => name, :password => password, :password_confirmation => password, :email => "#{name}@example.com")
end


#Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, data|
#  fill_in(field.gsub(' ', '_'), :with => data)
#end

#Given(/^I fill in "(.*?)" for "(.*?)"$/) do |data, field|  
#  fill_in(field.gsub(' ', '_'), :with => data)
#end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/ do |field, value, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"(?: within "([^"]*)")?$/ do |value, field, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)
end

Then /^page should redirect test profile page$/ do
  page.should have_title("| test")
end

Given /^I should see "(.*?)"$/  do |warning|
  page.should have_selector('div.alert.alert-error', "Password confirmation doesn't match Password")
end
