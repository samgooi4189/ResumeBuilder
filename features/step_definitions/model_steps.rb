Given /^I am a loggedin user$/ do
  step "I am on the login page"
  step "I have a user with username \"dummy\" and password \"password\""
  step "I fill in \"dummy\" for \"Username or Email Address\""
  step "I fill in \"password\" for \"Password\""
  step "I press \"Log in\""
  step "page should redirect test profile page"
end
