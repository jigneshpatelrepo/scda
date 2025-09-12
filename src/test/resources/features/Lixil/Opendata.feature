@test @opendata @OpendataPage
Feature: opendata: Validate SCDA Homepage

  @clearcookies

  Scenario: Validate Security for Page opening

   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

   Scenario: Validate Opendata page for - Visibility

    Then I navigate to 'https://dev-sdd.ishj.ae/en/open-data'
    And 'OpendataRelatedResourcescardComponent' component exists on the page
    And I scroll to 'OpendataRelatedResourcescardComponent'
    And 'OpendataComponentTitle' is visible
    And 'OpendataComponentDesc' is visible
    And 'OpendataRelatedResourcesTitle' is visible
    And 'OpendataRelatedResourcesCardTitle' is visible
    And 'OpendataRelatedResourcescarddownloadbtn' is visible
    And 'OpendataRelatedResourcescarddownloadbtnspan' is visible
    And 'OpendataRelatedResourcescarddownloadformat' is visible

 Scenario: Validate Opendata page for - UI (Font size,family and weight,Letter spacing,Line height)

   And The 'OpendataComponentTitle' element has following CSS properties
    | font-size                 | 24px                         |
    | line-height               | 32px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 400                          |
    | letter-spacing            | -0.48px                      |

  And The 'OpendataComponentDesc' element has following CSS properties
   | font-size                 | 18px                         |
   | line-height               | 28px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | letter-spacing            | normal                       |

 Scenario: Validate Opendata page for Related Resources - UI (Font size,family and weight,Letter spacing,Line height)

  And The 'OpendataRelatedResourcesTitle' element has following CSS properties
   | font-size                 | 48px                         |
   | line-height               | 48px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                      |

  And The 'OpendataRelatedResourcesCardTitle' element has following CSS properties
   | font-size                 | 24px                         |
   | line-height               | 32px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                      |

  And The 'OpendataRelatedResourcescarddownloadbtnspan' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 14px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

  And The 'OpendataRelatedResourcescarddownloadformat' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 16px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |


 Scenario: Validate FAQ - Hover effect on card
  And I hover mouse over 'OpendataRelatedResourcescardComponentcard1'
  And I wait for '2' seconds
  And The 'class' attribute of 'OpendataRelatedResourcescardComponentcard1' element contains 'border-primary-200'

 Scenario: Validate FAQ - Functionalities - Count and Navigation
 And Total count of 'OpendataRelatedResourcescardComponentTotalcards' is 5

 Scenario: Validate Related Resources carousel functionality ( Enable and Disable )

  Then 'OpendataRelatedResourcescardComponentPrevBtn' is disabled
  And I click on 'OpendataRelatedResourcescardComponentNextBtn'
  And I wait for '2' seconds
  And The 'class' attribute of 'OpendataRelatedResourcescardComponentPrevBtndis' elementforonlyattribute contains 'hidden is-prev'
  And I click on 'OpendataRelatedResourcescardComponentPrevBtn'
  And I wait for '1' seconds
  And The 'class' attribute of 'OpendataRelatedResourcescardComponentPrevBtndis' element contains 'is-active is-visible'