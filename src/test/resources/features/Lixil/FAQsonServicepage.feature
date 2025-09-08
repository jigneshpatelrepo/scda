@test @FaqsOnservicepage @FAQs
Feature: FAQsonServicepage: Validate SCDA Homepage

  @clearcookies

   Scenario: Validate Service page for FAQ's - Visibility

    Then I navigate to 'https://dev-sdd.ishj.ae/en/services/construction-plan-approvals'
    And I wait for '3' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds
    And 'FAQsearchComponent' is visible
    And I scroll to 'FAQsearchComponent'
    And 'FAQsearchInput' is visible
    And 'FAQTotalcount' is visible
    And 'FAQFilterItem1' is visible
    And 'FAQFilterItem2' is visible
    And 'FAQFilterItem3' is visible

 Scenario: Validate Service page for FAQ's - UI (Font size,family and weight,Letter spacing,Line height)


   And The 'FAQTTitleOnTop' element has following CSS properties
    | font-size                 | 24px                         |
    | line-height               | 32px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 400                          |
    | letter-spacing            | -0.48px                      |

  And The 'FAQTDescOnTop' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | letter-spacing            | normal                       |
  And The 'aria-label' attribute of 'FAQTotalcount' element contains '11'

 Scenario: Validate FAQ - UI of left side components (Font size,family and weight,Letter spacing,Line height)

  And The 'FAQTotalcount' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

  And The 'FAQFilterItem1' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |

 Scenario: Validate FAQ - UI of left side components (Font size,family and weight,Letter spacing,Line height)

  And The 'FAQItemBoxHeading' element has following CSS properties
   | font-size                 | 24px                         |
   | line-height               | 32px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                      |

  And The 'FAQItemBoxDesc' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 24px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |

  And The 'FAQItemBoxCTAFont' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 14px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

 Scenario: Validate FAQ - Hover effect on card
  And I hover mouse over 'FAQItemBoxHoverfortest'
  And I wait for '2' seconds
  And The 'class' attribute of 'FAQItemBoxHover' element contains 'active-cta'

 Scenario: Validate FAQ - Functionalities - Count and Navigation

  And I click on 'FAQTotalcount'
   And I wait for '1' seconds
   And The 'aria-label' attribute of 'FAQTotalcount' element contains '11'

   And I click on 'FAQFilterItem1'
   And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQFilterItem1' element contains '(6 items)'

   And I click on 'FAQFilterItem2'
   And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQFilterItem2' element contains '(5 items)'

 Scenario: Validate FAQ - Functionalities - Loadmore

  And I click on 'FAQTotalcount'
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 10
  And I click on 'FAQQuestionLoadmore'
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 11

 Scenario: Validate FAQ - Search Functionality
  And I enter 'add' into 'FAQsearchInput' field
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 3

