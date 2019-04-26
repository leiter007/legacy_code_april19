Feature: User can create account
    As a User,
    In order to use the application
    I would like to be able to create an account

    Background: 
        Given I visit the "landing" page
        And I click "Sign up" link

    Scenario: Successfully create an account [Happy Path]
        When I fill in "Name" with "Feliks"
        And I fill in "Email" with "feliks@craft.se"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click "Create"
        Then I should see "Welcome! You have signed up successfully"
   

        #[Sad Path]
        # Name with 10 character should NOT give error message
        # Email without @ should NOT work???
        # Not filled in all field
        # Only one user per email

        # Validations:
        # Password length, min 8, 
        # password = password confirmation
        # valid email, unique
        # duplicates, email