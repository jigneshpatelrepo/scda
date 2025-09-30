@test @Careers @Careerspage
Feature: Careers: Validate ServiceCategory Page

  @clearcookies
  Scenario: Validate Security for Page opening
    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Careers Field Visibility
    Then I navigate to 'https://dev-sdd.ishj.ae/en/about/careers'
    And 'CardsWithoutFilter_Component' component exists on the page
    And I scroll to 'CardsWithoutFilter_Component'
    And 'CardsWithoutFilter_Component_title' is visible
    And 'CardsWithoutFilter_Component_Desc' is visible
    And 'CardsWithoutFilter_Cta' is visible

#  Scenario: Validate ServiceCategory UI (Font size,family and weight,Letter spacing,Line height)
#
#    And The 'AwardsCertiComponent_itemTitle' element has following CSS properties
#      | font-size                 | 24px                         |
#      | line-height               | 32px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 400                          |
#      | letter-spacing            | -0.48px                      |
#      | Color                     | rgb(0, 0, 0)                 |


  Scenario: Validate Careers Job card Hover
    And I hover mouse over 'CardsWithoutFilter_Cta_hover'
    And I wait for '2' seconds
    And The 'CardsWithoutFilter_Cta_hover' element has following CSS properties
      | background-color                      | rgb(230, 243, 236)        |
#
#  Scenario: Validate ServiceCategory - Functionality - Loadmore
#    And Total count of 'AwardsCertiComponent_itemlinkAnchor' is 9
#    And I click on 'AwardsCertiComponent_Loadmore'
#    And I wait for '1' seconds
#    And Total count of 'AwardsCertiComponent_itemlinkAnchor' is 15

  Scenario: Validate Careers - Functionality - Navigation
    And I click on 'CardsWithoutFilter_Cta'
    And I wait for '1' seconds
    And Current URL contains Either of 'google' or 'careers'