Feature: Register an account
  In order to register an account
  A user
  Should fill in the user form and click submit

  Scenario: 
    Given I am on the signup page
    And I fill in "email" with "test@example.com"
    And I fill in "password" with "foobar"
    And I fill in "password confirmation" with "foobar"
    When I press "Signup"
    Then page should redirect profile page 
