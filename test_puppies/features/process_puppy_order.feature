Feature: Processing the Puppy Orders

  I want to login to the Admin Page
  So that I can process the orders
  Sending these puppies to a home

  Scenario: Verify message when adoption is processed
    Given I have a pending adoption for "Tom Jones"
    When I process the adoption
    Then I should see "Please thank Tom Jones for the order!"