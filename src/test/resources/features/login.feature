
@wip
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct credentials to different accounts. And dashboard should be displayed.
  Accounts are: librarian, student, admin

  Background: Assuming user is on the login page
    Given user is on the login page

@librarian
  Scenario: Login as librarian
    # for comments we use hashtags

    When user enters librarian username
    And user enters librarian password
    Then user should see the dashboard

@student
  Scenario: Login as a student
    When user enters student username
    When user enters student password
    Then user should see the dashboard

@admin
  Scenario: Login as admin
    When user enters admin username
    And user enters admin password
    Then user should see the dashboard