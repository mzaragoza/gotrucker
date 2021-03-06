@javascript
Feature: User should be able to mange shipments
  In order for our clients to make money 
  they should be able able to manage and track their shipments

  Background:
    Given I am signed in as an user
    Given the following trucks:
    | name   |
    | Lyda   |
    | Sydney |
    Given the following trailers:
    | name    |
    | Mckayla |
    | Grace   |
    Given the following brokers:
    | name     |
    | Caterina |
    | Macs Trucks |
    Given I go to the users shipments page

  Scenario: User should be able add and update a shipment
    When I follow "Add Shipment"
    And I select "Caterina" from "shipment_broker_id"
    And I select "Lyda" from "shipment_truck_id"
    And I select "Mckayla" from "shipment_trailer_id"
    And I fill in "shipment_load_number" with "665444"
    And I fill in "shipment_price" with "8999"
    And I fill in "shipment_miles" with "5085"
    And I fill in "shipment_pick_up_location_address" with "Merritt Meadow"
    And I fill in "shipment_pick_up_location_address2" with ""
    And I fill in "shipment_pick_up_location_city" with "Port Idella"
    And I select "Florida" from "shipment_pick_up_location_state"
    And I fill in "shipment_pick_up_location_zip" with "17079"
    And I fill in "shipment_pick_up_location_phone" with "7105526572"
    And I fill in "shipment_delivery_location_address" with "Tomasa Walk"
    And I fill in "shipment_delivery_location_address2" with ""
    And I fill in "shipment_delivery_location_city" with "West Reina"
    And I select "Florida" from "shipment_delivery_location_state"
    And I fill in "shipment_delivery_location_zip" with "58392"
    And I fill in "shipment_delivery_location_phone" with "1271237494"
    And I fill in "shipment_number_of_stops" with "1"
    And I fill in "shipment_notes" with ""
    And I fill in "shipment_pick_up_date" with "2013-07-01"
    And I fill in "shipment_deliver_date" with "2013-07-05"
    And I select "Needs to be dispatched" from "shipment_status"
    And I fill in "shipment_weight" with "8037"
    And I fill in "shipment_drivers_notes" with ""
    And I fill in "shipment_packing" with "palets"
    And I fill in "shipment_seal_number" with "17306"
    And I fill in "shipment_size_of_trailer" with "53"
    And I fill in "shipment_pallets_pisses" with "59"
    And I fill in "shipment_pick_up_number" with "922965776"
    And I fill in "shipment_delivery_number" with "42036632"
    And I fill in "shipment_pick_up_earlier_time" with "19:38"
    And I fill in "shipment_pick_up_lateest_time" with "19:38"
    And I fill in "shipment_pick_up_appointment" with ""
    And I fill in "shipment_delivery_earlier_time" with "19:38"
    And I fill in "shipment_delivery_lateest_time" with "19:38"
    And I select "Box" from "shipment_trailer_type"
    And I fill in "shipment_delivery_appointment" with ""
    And I fill in "shipment_pick_up_company" with ""
    And I fill in "shipment_delivery_company" with ""
    And I press "Create Shipment"
    Then I should see "Shipment was successfully created"
    And I should see "Caterina"
    And I should see "Lyda"
    And I should see "Mckayla"
    And I follow "Show"
    Then I should see "Shipment - Caterina 665444 Lyda 2013-07-01"
    And I follow "Edit"
    And I select "Off loaded" from "shipment_status"
    And I press "Update Shipment"
    Then I should see "Shipment was successfully updated"
    And I should see "Caterina"
    And I should see "Lyda"
    And I should see "Mckayla"
    And I follow "Invoice"
    When I should see "Create Invoice"
    And I fill in "invoice_invoice_number" with "13579"
    And I press "Create Invoice"
    And I should see "Invoice was successfully created"
    And I should see "13579"
    When I follow "13579"
    And I should see "Invoice - 13579"
    And I follow "Edit"
    And I select "Paid" from "invoice_paid_status"
    And I press "Update Invoice"
    And I should see "Invoice was successfully updated"

