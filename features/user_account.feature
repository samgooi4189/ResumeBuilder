Feature: Register an account
  In order to register an account
  A user
  Should fill in the user form and click submit

  Scenario: Correct signup 
    Given I am on the signup page
    And I fill in "Name" with "test"
    And I fill in "Email" with "test@example.com"
    And I fill in "Password" with "foobar"
    And I fill in "foobar" for "Confirm Password"
    When I press "Create my account"
    Then page should redirect test profile page 

  Scenario: Wrong signup
    Given I am on the signup page
    And I fill in "Name" with "test"
    And I fill in "Email" with "test@example.com"
    And I fill in "Password" with "foobar"
    And I fill in "barfoo" for "Confirm Password"
    When I press "Create my account"
    Then I should see "Password confirmation doesn't match Password"

  Scenario: login
    Given I am on the login page
    And I have a user with name "test" and password "foobar"  
    And I fill in "Email" with "test@example.com"
    And I fill in "Password" with "foobar"
    When I press "Sign in"
    Then page should redirect test profile page
