Feature: Add a skill to the resume
         In order to list this skill
         A user
         Should fill out the skill form
 
         Scenario: Create a new skill
                 Given I am on the /skill/new page
                 And I fill in "Name" with "So lazy"
                 And I fill in "Description" with "I would show up a sloth"
                 When I press "Create Skill"
                 Then page should have notice message "Skill was successfully created."

