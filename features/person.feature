Feature: Add a recommendee to the resume
	In order to list this person
	A user
	Should fill out the person form

	Scenario: Create a new person
		Given I am on the /people/new page
		And I fill in "Name" with "Molly"
		And I fill in "Email" with "molly2@example.com"
		And I fill in "Relationship" with "Manager"
		And I fill in "Phone" with "(433)667-1223"
		When I press "Create Person"
		Then page should have notice message "Person was successfully created."
