# from http://github.com/plataformatec/devise/wiki/How-To:-Test-with-Cucumber

@wip
Feature: Authentication
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Creating a new account
    Given I am not authenticated
    When I go to register
    And I fill in "user_email" with "testing@man.net"
    And I fill in "user_password" with "secretpass"
    And I fill in "user_password_confirmation" with "<password>"
    And I press "Sign up"
    Then I should see "logged in as testing@man.net"

  Scenario: Willing to edit my account
    Given I am a new, authenticated user # beyond this step, your work!
    When I want to edit my account
    Then I should see the account initialization form
    And I should see "Your account has not been initialized yet. Do it now!"
    # And more view checking stuff