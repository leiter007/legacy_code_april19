Feature: User can view the inbox
    As a User
    In order to see emails sent to me
    I would like to be able to view my inbox

    Scenario: User can view inbox
        Given the following user exists
            |name       |  email              | password  |
            |georgeZane |  george@gmail.com   | psw12345  |
        
        When I visit the landing page
        Then I click on the "login" link
        And I fill in the "email" field with "george@gmail.com"
        And i fill in the "password" field with "psw12345"
        Then I should see "Signed in successfully."
        And I should see "Inbox"
        Then I click on the "Inbox" link
        Then I should see "Compose"