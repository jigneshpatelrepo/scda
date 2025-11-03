@test @opendata @OpendataPage
Feature: opendata: Validate Opendata page

 @clearcookies
 Scenario: Validate Security for Page opening
  Then I navigate to 'https://dev-sdd.ishj.ae/en/'
  And I wait for '3' seconds
  And I click on 'Advancebutton' if available
  And  I click on 'Advancebuttonproceed' if available
  And I wait for '3' seconds

 Scenario: Validate Opendata page for - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/open-data'
  And 'OpendataRelatedResources_cardComponent' component exists on the page
  And I scroll to 'OpendataRelatedResources_cardComponent'
  And 'OpendataComponentTitle' is visible
  And 'OpendataComponentDesc' is visible
  And 'OpendataRelatedResources_Title' is visible
  And 'OpendataRelatedResources_CardTitle' is visible
  And 'OpendataRelatedResources_carddownloadbtn' is visible
  And 'OpendataRelatedResources_carddownloadbtnspan' is visible
  And 'OpendataRelatedResources_carddownloadformat' is visible

 Scenario: Validate Opendata page for - UI (Font size,family and weight,Letter spacing,Line height)

  And The 'OpendataComponentTitle' element has following CSS properties
   | font-size                 | 22px                         |
   | line-height               | 36px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |
   |color                      | rgb(0, 0, 0)                 |

  And The 'OpendataComponentDesc' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |
   |color                      | rgb(94, 94, 94)             |

 Scenario: Validate Opendata page for Related Resources - UI (Font size,family and weight,Letter spacing,Line height)

  And The 'OpendataRelatedResources_Title' element has following CSS properties
   | font-size                 | 40px                         |
   | line-height               | 48px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |
   |color                      | rgb(0, 0, 0)                 |

  And The 'OpendataRelatedResources_CardTitle' element has following CSS properties
   | font-size                 | 22px                         |
   | line-height               | 36px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |
   |color                      | rgb(0, 0, 0)                 |

  And The 'OpendataRelatedResources_carddownloadbtnspan' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 14px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |
   |color                      | rgb(0, 0, 0)                 |

  And The 'OpendataRelatedResources_carddownloadformat' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |
   |color                      | rgb(94, 94, 94)              |
  And The 'OpendataRelatedResources_carddownloadformat' attribute contains Either of 'KB' or 'MB'
  
 Scenario: Validate FAQ - Hover effect on card
  And I hover mouse over 'OpendataRelatedResources_cardComponentcard1'
  And I wait for '2' seconds
  And The 'class' attribute of 'OpendataRelatedResources_cardComponentcard1' element contains 'border-primary-200'

 Scenario: Validate FAQ - Functionalities - Count and Navigation
  And Total count of 'OpendataRelatedResources_cardComponentTotalcards' is 6

 Scenario: Validate Related Resources carousel functionality ( Enable and Disable )
  Then 'OpendataRelatedResources_cardComponentPrevBtn' is disabled
  And I click on 'OpendataRelatedResources_cardComponentNextBtn'
  And I wait for '2' seconds
  And The 'class' attribute of 'OpendataRelatedResources_cardComponentPrevBtndis' elementforonlyattribute contains 'hidden is-prev'
  And I click on 'OpendataRelatedResources_cardComponentPrevBtn'
  And I wait for '1' seconds
  And The 'class' attribute of 'OpendataRelatedResources_cardComponentPrevBtndis' element contains 'is-active is-visible'