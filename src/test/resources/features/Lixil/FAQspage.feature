@test @FAQ_spage @FAQ_s
Feature: FAQs_page: Validate FAQ (SCDA Homepage)

 @clearcookies
 Scenario: Validate Security for Page opening

  Then I navigate to 'https://dev-sdd.ishj.ae/en/'
  And I wait for '3' seconds
  And I click on 'Advancebutton' if available
  And  I click on 'Advancebuttonproceed' if available
  And I wait for '3' seconds

 Scenario: Validate FAQ_'s page - Innerbanner and FAQ Q&A Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/FAQs'
  And 'FAQ_InnerBannerwithImageComponent' component exists on the page
  And 'FAQ_InnerBannerwithImageComponentTitle' is visible
  And 'FAQ_searchComponent' is visible
  And I scroll to 'FAQ_searchComponent'
  And 'FAQ_searchComponent' is visible
  And 'FAQ_searchInput' is visible
  And 'FAQ_Totalcount' is visible
  And 'FAQ_FilterItem1' is visible
  And 'FAQ_FilterItem2' is visible
  And 'FAQ_FilterItem3' is visible

 Scenario: Validate FAQ_ - Innner banner UI (Font size,family and weight,Letter spacing,Line height)

  And The 'FAQ_InnerBannerwithImageComponentTitle' element has following CSS properties
   | font-size                 | 48px                         |
   | line-height               | 48px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                      |
   | Color                     | rgb(255, 255, 255)           |

 Scenario: Validate FAQ - UI (Font size,family and weight,Letter spacing,Line height)

  And The 'FAQ_Totalcount' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

  And The 'FAQ_FilterItem1' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |

  And The 'FAQ_Question1Item1' element has following CSS properties
   | font-size                 | 24px                         |
   | line-height               | 32px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                       |

 Scenario: Validate FAQ - Functionalities - Count and Navigation
  And I click on 'FAQ_Totalcount'
  And I wait for '1' seconds
  And 'all faqs (22 items) - selected' text is visible in test 'FAQ_Totalcount'
  And The 'aria-label' attribute of 'FAQ_Totalcount' element contains '22'

  And I click on 'FAQ_FilterItem1'
  And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQ_FilterItem1' element contains '(2 items)'

  And I click on 'FAQ_FilterItem2'
  And I wait for '1' seconds
  And The 'aria-label' attribute of 'FAQ_FilterItem2' element contains '(3 items)'

 Scenario: Validate FAQ - Functionalities - Collapse and Expand
  And The 'aria-expanded' attribute of 'FAQ_Item1' element contains 'false'
  And I click on 'FAQ_Item1'
  And I wait for '1' seconds
  And The 'aria-expanded' attribute of 'FAQ_Item1' element contains 'true'

 Scenario: Validate FAQ - Functionalities - Loadmore
  And I click on 'FAQ_Totalcount'
  And I wait for '1' seconds
  And I click on 'FAQ_QuestionLoadmore' if available
  And Total count of 'FAQ_countafterclickingonLoadmore' is 20
  And I click on 'FAQ_QuestionLoadmore' if available
  And I wait for '1' seconds
  And Total count of 'FAQ_countafterclickingonLoadmore' is 22

 Scenario: Validate FAQ - Search Functionality
  And I enter 'why' into 'FAQ_searchInput' field
  And I wait for '3' seconds
  And Total count of 'FAQ_countafterclickingonLoadmore' is 6

