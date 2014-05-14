Feature: Add a company to the resume
         In order to list this company
         A user
         Should fill out the company form
 
         Scenario: Create a new company
                 Given I am a loggedin user
                 And I am on the /company/new page
                 And I fill in "Name" with "MG&E"
                 And I fill in "Start date" with "2013/01/01"
                 And I fill in "End date" with "2014/01/01"
                 When I press "Create Company"
                 Then page should have notice message "Company was successfully created."

