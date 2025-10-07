@test @FaqsOnservicepage @FAQs
Feature: FAQs_on_Servicepage: Validate FAQ on Service page
  @clearcookies
 Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

 Scenario: Validate Service page for FAQ - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/services/construction-plan-approvals'
    And 'FAQsearchComponent' is visible
    And I scroll to 'FAQsearchComponent'
    And 'FAQsearchInput' is visible
    And 'FAQTotalcount' is visible
    And 'FAQFilterItem1' is visible
    And 'FAQFilterItem2' is visible
    And 'FAQFilterItem3' is visible

 Scenario: Validate Service page for FAQ's - UI (Font size,family and weight,Letter spacing,Line height)

   And The 'FAQTTitleOnTop' element has following CSS properties
    | font-size                 | 22px                         |
    | line-height               | 36px                         |
    | font-family               | Inter, "Inter Fallback"      |
    | font-weight               | 400                          |
    | letter-spacing            | normal                       |
    | color                     | rgb(0, 0, 0)                 |

  And The 'FAQTDescOnTop' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |
   | color                     | rgb(94, 94, 94)              |

  And The 'aria-label' attribute of 'FAQTotalcount' element contains '11'

 Scenario: Validate FAQ - UI of left side components (Font size,family and weight,Letter spacing,Line height)

  And I click on 'FAQTotalcount'
  And The 'FAQTotalcount' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |
   | color                     | rgb(23, 143, 82)             |
And The 'class' attribute of 'FAQTotalcount' element contains 'text-primary-300'

 Scenario: Validate FAQ - UI of left side components (Font size,family and weight,Letter spacing,Line height)

  And The 'FAQItemBoxHeading' element has following CSS properties
   | font-size                 | 22px                         |
   | line-height               | 36px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |
   | color                     | rgb(0, 0, 0)                 |

  And The 'FAQItemBoxDesc' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 24px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |
   | color                     | rgb(94, 94, 94)              |

  And The 'FAQItemBoxCTAFont' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 14px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |
   | color                     | rgb(0, 0, 0)                 |

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

 Scenario: Validate FAQ - Hover effect on card
  And I refresh the current page
  And I scroll to 'FAQItemBoxCTA'
  And I hover mouse over 'FAQItemBoxCTA'
  And I wait for '1' seconds
#  And The 'FAQItemBoxHover' element has following CSS properties
#   | background-color           | rgb(230, 243, 236)       |
  And The 'class' attribute of 'FAQItemBoxHover' element contains 'active-cta'

 Scenario: Validate FAQ - Functionalities - Loadmore
  And I click on 'FAQTotalcount'
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 10
  And I click on 'FAQQuestionLoadmore'
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 11
#  And I refresh the current page
#  And I click on 'FAQFilterItem2'
# And Total count 'FAQItemBox' is greater than single filter 'FAQcountafterclickingonLoadmore'
 
 Scenario: Validate FAQ - Search Functionality
  And I enter 'add' into 'FAQsearchInput' field
  And I wait for '2' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 3

