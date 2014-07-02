Feature: Adopting Puppies Using Tables
  
  I want to see how many puppies I can adopt
  Using a table 
  Entering my data in there 

  Background:
    Given I am on the puppy adoption site

  Scenario: Adopting a puppy using a table
    When I click the View Details button for "Brook"
    And I click the Adopt Me Button
    And I click the Complete the Adoption button
    And I complete the adoption with:
    | name   | address         | email              | pay_type  |
    | Cheezy | 123 Main Street | cheezy@example.com | Check     |
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using partial default data
    When I click the View Details button for "Brook"
    And I click the Adopt Me Button
    And I click the Complete the Adoption button
    And I complete the adoption using a Credit Card
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using all default data
    When I click the View Details button for "Brook"
    And I click the Adopt Me Button
    And I click the Complete the Adoption button
    And I complete the adoption
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Name is a required field
    When I checkout leaving the name field blank
    Then I should see the error message "Name can't be blank"

  Scenario: Verify message when adoption is processed
    Given I have a pending adoption for "Tom Jones"
    When I process the adoption
    Then I should see "Please thank Tom Jones for the order!"