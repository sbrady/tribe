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
    Then I see the total cost "$800.0" and count "10" for "IMG"
    And I see the number of bundles is "1 x 10" at cost "$800.0"


  Scenario: An order for audio
    When I enter the order "15 FLAC"
    Then I see the total cost "$1957.5" and count "15" for "FLAC"
    And I see the number of bundles is "1 x 9" at cost "$1147.5"
    And I see the number of bundles is "1 x 6" at cost "$810.0"


  Scenario: An order for videos
    When I enter the order "13 VID"
    Then I see the total cost "$2370.0" and count "13" for "VID"
    And I see the number of bundles is "2 x 5" at cost "$1800.0"
    And I see the number of bundles is "1 x 3" at cost "$570.0"


  Scenario: An order for all of the formats
    When I enter the order "10 IMG 15 FLAC 13 VID"
    Then I see the total cost "$800.0" and count "10" for "IMG"
    And I see the number of bundles is "1 x 10" at cost "$800.0"
    And I see the total cost "$1957.5" and count "15" for "FLAC"
    And I see the number of bundles is "1 x 9" at cost "$1147.5"
    And I see the number of bundles is "1 x 6" at cost "$810.0"
    And I see the total cost "$2370.0" and count "13" for "VID"
    And I see the number of bundles is "2 x 5" at cost "$1800.0"
    And I see the number of bundles is "1 x 3" at cost "$570.0"