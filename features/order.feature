Feature: Order screen
  As a brand advertiser
  I want to determine cost and bundle break down, for ordering different format types
  So That I can save on cost

  Background:
    Given the image submission bundle and prices:
      | size | cost   |
      | 5    | 450.00 |
      | 10   | 800    |
    And the audio submission bundle and prices:
      | size | cost    |
      | 3    | 427.50  |
      | 6    | 810.00  |
      | 9    | 1147.50 |
    And the video submission bundle and prices:
      | size | cost    |
      | 3    | 570.00  |
      | 5    | 900.00  |
      | 9    | 1530.00 |


  Scenario: An order for images
    When I enter the order "10 IMG"
    And I enter Submit
    Then I see the number of bundles and roses is "1 x 10" at cost "$800"
    And I see the total cost "$800" and "10" for "IMG"