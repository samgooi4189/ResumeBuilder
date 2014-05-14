Feature: Add a school to the resume
         In order to list this school
         A user
         Should fill out the school form
 
         Scenario: Create a new school
                 Given I am on the /school/new page
                 And I fill in "Name" with "UW Madison"
                 And I fill in "Degree" with "BS"
                 And I fill in "Major" with "CS"
                 And I fill in "Gpa" with "3.3"
                 When I press "Create School"
                 Then page should have notice message "School was successfully created."

