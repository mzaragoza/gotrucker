#@javascript
Feature: User should be able to mange brokers
  In order for our clients to know who they are in business with 
  they should be able to manage their brokers

  Background:
    Given I am signed in as an user
    Given I go to the users brokers page

  Scenario: User should be able add and update a broker
    When I follow "Add Broker"
