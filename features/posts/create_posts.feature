Feature: Create Post
  In order for visitors to read posts
  As an author
  I want to be able to create a post
  
  @wip
  Scenario: I sign in and create a post
    When I go to the homepage
    And I follow "Sign in"
    Given I am a user named "Foo Bar" with an email "user@test.com" and password "please"
    When I sign in as "user@test.com/please"
    Then I should be signed in
    When I follow "New Post"
    And I fill in "Title" with "Hello World"
    And I fill in "Content" with "Hello World this is IT!"
    And I press "Submit"
    Then I should see "Post successfully created"