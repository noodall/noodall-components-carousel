Feature: Carousel Component
  In order to to promote sections of the site
  as a website editor
  I want to upload images to display in a hero panel

  @javascript
  Scenario: Carousel Item
    Given I am editing content
    And place a "Carousel" component in a slot
    And add multiple slides to the carousel
    When I view the content
    Then I should see the slides within the slot
