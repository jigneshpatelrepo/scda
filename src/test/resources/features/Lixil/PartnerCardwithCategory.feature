 @test @Ourpartners @CardsWithCategory
Feature: PartnerCardwithCategory: Validate SCDA Homepage - Faqs

  @clearcookies

  Scenario: Validate Ourpartners -Visibility
    Then I navigate to 'https://dev-sdd.ishj.ae/en/about/our-partners'
    And I wait for '3' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds

    And 'CardsWithCategoryComponent' component exists on the page
    And I scroll to 'CardsWithCategoryComponent'
    And 'CardsWithCategoryComponentTitle' is visible
    And 'CardsWithCategoryComponentcard' is clickable

  Scenario: Validate Ourpartners - UI - (Font size,family and weight,Letter spacing,Line height)

    And The 'CardsWithCategoryComponentTitle' element has following CSS properties
      | font-size                 | 40px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | normal                       |


  Scenario: Validate Ourpartners - Hover functionality

    And I hover mouse over 'CardsWithCategoryComponentcard'
    And I wait for '1' seconds
    And The 'CardsWithCategoryComponentcard' element has following CSS properties
      | background-color               |  rgb(230, 243, 236)      |


  Scenario: Validate Ourpartners - Navigation

    And I click on 'CardsWithCategoryComponentcard'
    And Current URL contains 'https'
    And I switch browser