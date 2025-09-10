@test @Faqspage @FAQs
Feature: FAQspage: Validate SCDA Homepage

  @clearcookies

   Scenario: Validate FAQ's page - Innerbanner and FAQ Q&A Visibility

    Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/faqs'
    And I wait for '3' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds
    And 'FAQInnerBannerwithImageComponent' component exists on the page
    And 'FAQInnerBannerwithImageComponentTitle' is visible
    And 'FAQsearchComponent' is visible
    And I scroll to 'FAQsearchComponent'
    And 'FAQsearchComponent' is visible
    And 'FAQsearchInput' is visible
    And 'FAQTotalcount' is visible
    And 'FAQFilterItem1' is visible
    And 'FAQFilterItem2' is visible
    And 'FAQFilterItem3' is visible

 Scenario: Validate FAQ - Innner banner UI (Font size,family and weight,Letter spacing,Line height)


   And The 'FAQInnerBannerwithImageComponentTitle' element has following CSS properties
    | font-size                 | 48px                         |
    | line-height               | 48px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 400                          |
    | letter-spacing            | -0.48px                      |
    | Color                     | rgb(255, 255, 255)           |

 Scenario: Validate FAQ - UI (Font size,family and weight,Letter spacing,Line height)

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

  And The 'FAQQuestion1Item1' element has following CSS properties
   | font-size                 | 24px                         |
   | line-height               | 32px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                       |


 Scenario: Validate FAQ - Functionalities - Count and Navigation

  And I click on 'FAQTotalcount'
   And I wait for '1' seconds
   And 'all faqs (22 items) - selected' text is visible in test 'FAQTotalcount'
   And The 'aria-label' attribute of 'FAQTotalcount' element contains '22'

   And I click on 'FAQFilterItem1'
   And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQFilterItem1' element contains '(2 items)'

   And I click on 'FAQFilterItem2'
   And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQFilterItem2' element contains '(3 items)'

 Scenario: Validate FAQ - Functionalities - Collapse and Expand

  And The 'aria-expanded' attribute of 'FAQItem1' element contains 'false'
  And I click on 'FAQItem1'
  And I wait for '1' seconds
  And The 'aria-expanded' attribute of 'FAQItem1' element contains 'true'

 Scenario: Validate FAQ - Functionalities - Loadmore

  And I click on 'FAQTotalcount'
  And I wait for '1' seconds
  And I click on 'FAQQuestionLoadmore'
  And Total count of 'FAQcountafterclickingonLoadmore' is 20
  And I click on 'FAQQuestionLoadmore'
  And I wait for '1' seconds
  And Total count of 'FAQcountafterclickingonLoadmore' is 22