Feature: Add a recommendee to the resume
	In order to list this person
	A user
	Should fill out the person form

	Scenario: Create a new person
		Given I am on the people page
		And I fill in "person name" with "Molly"
		And I fill in "person email" with "molly2@example.com"
		And I fill in "person relationship" with "Manager"
		And I fill in "person phone" with "(433)667-1223"
		When I press "Submit"
		Then page should have notice message "Person was successfully created."
