#@javascript
Feature: Owner creates an account
  In order for us to have clients 
  they should be able to create an account

  Background:
    Given the following plans:
    | name | slug | monthy_price | yearly_price | featured | active | licenses |
    | Free | free | 20           | 200          | true     | true   | 1        |

  Scenario: Owner should be able to create an account
    Given I go to the home page
    When I follow "Try For Free"
    Then I should see "Pricing Table"

