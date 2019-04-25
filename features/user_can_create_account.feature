Feature: User can create account
    As a User,
    In order to use the application
    I would like to be able to create an account

    Background: 
        Given I visit the "landing" page
        When I click "Sign up" link

    Scenario: Successfully create an account [Happy Path]
        When I fill in "Name" with "Noel"
        And I fill in "Email" with "noel@craft.se"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click "Create"
        Then I should be on "landing" page
        And I should see "'Welcome! You have signed up successfully"
        And I should see "Hello, Noel"
        And I should see "Inbox"
        And I should see "Logout"
        And I should not see "Login"
        And I should not see "Sign up"

        #[Sad Path]
        # Name with 10 character should NOT give error message
        # Email without @ should NOT work???
        # Not filled in all field
        # Only one user per email