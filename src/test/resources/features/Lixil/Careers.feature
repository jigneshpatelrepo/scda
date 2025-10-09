@test @Careers @Careerspage @test1
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

  Scenario: Validate ServiceCategory UI (Font size,family and weight,Letter spacing,Line height)

    And The 'CardsWithoutFilter_Component_title' element has following CSS properties
      | font-size                 | 22px                         |
      | line-height               | 36px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)                 |

    And The 'CardsWithoutFilter_Component_Desc' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 24px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            | 0.2px                        |

    And The 'CardsWithoutFilter_Cta_span' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            | 0.2px                        |


  Scenario: Validate Careers Job card Hover
    And I hover mouse over 'CardsWithoutFilter_Cta_hover'
    And I wait for '2' seconds
    And The 'CardsWithoutFilter_Cta_hover' element has following CSS properties
      | background-color                      | rgb(230, 243, 236)        |

  Scenario: Validate Careers - Functionality - Navigation
    And I click on 'CardsWithoutFilter_Cta'
    And I wait for '1' seconds
    And Current URL contains Either of 'google' or 'careers'
