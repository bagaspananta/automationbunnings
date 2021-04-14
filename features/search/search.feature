Feature: Search and Header feature

  Scenario: search for a product by clicking the search button 
    Given I am on the homepage
    And I search for "sliding doors"
    When I click the search button
    Then I should see the text "results for sliding doors"
    And the "Our Range" tab should be active

  @panel
  Scenario Outline: search for a product in product, D.I.Y Advice and Services using the drop down results 
    Given I am on the homepage
    And I search for "<product>"
    
    When I select "<product>" in "<category>"
    Then I should see the text "<product>"
    And the "<category>" tab should be active
  Examples:
    |product| category     |  
    |panels | Products     |
    |panels | D.I.Y Advice |
    |panels | Services     |