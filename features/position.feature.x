Feature: Add a position to the resume
         In order to list this job
         A user
         Should fill out the position form
 
         Scenario: Create a new Position
                 Given I am on the /position/new page
                 And I fill in "Name" with "Doctor"
                 And I fill in "Tasks" with "Healing and all that Jazz"
		 And I select "Bluemound Golf and Country Club" from "Company"
                 When I press "Create Position"
                 Then page should have notice message "Position was successfully created."

