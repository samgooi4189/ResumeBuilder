Given /^I am a loggedin user$/ do
  step "I have a user with name \"dummy\" and password \"password\""
  visit signin_path
  fill_in("Email", :with => "dummy@example.com")
  fill_in("Password", :with => "password")
  click_button("Sign in")
  page.should have_title("| dummy")
  visit root_path
end
