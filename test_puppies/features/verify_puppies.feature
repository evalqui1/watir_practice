Feature: Verifying puppies

  I want to purchase puppies
  Also verify how much they cost
  So they can chew my stuff

Background:
  Given I am on the puppy adoption site

  Scenario: Validate cart with two puppies
    When I click the View Details button for "Brook"
    And I click the Adopt Me Button
    And I click the Adopt Another Puppy button
    And I click the View Details button for "Hanna"
    And I click the Adopt Me Button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    Then I should see "Hanna" as the name for line item 2
    And I should see "$22.99" as the subtotal for line item 2
    And I should see "$57.94" as the cart total