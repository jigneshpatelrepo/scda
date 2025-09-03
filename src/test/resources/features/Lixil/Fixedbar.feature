@lixil @test @SCDAhomepage @FixedBar
Feature: Fixedbar: Validate SCDA Homepage

  @clearcookies

   Scenario: Validate FixedBar - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds
    And 'FixedBarComponent' component exists on the page
    And I scroll to 'FixedBarComponent'
    And 'FixedBarComponentEmergency' is visible
    And 'FixedBarComponentEmergency' is clickable
   And 'FixedBarComponentEService' is visible
   And 'FixedBarComponentEService' is clickable
   And 'FixedBarComponentFeedback' is visible
   And 'FixedBarComponentFeedback' is clickable
   And 'FixedBarComponentCallcenter' is visible
   And 'FixedBarComponentCallcenter' is clickable


   And The 'FixedBarComponentEmergencySpan' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 14px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(0, 0, 0)           |

   And The 'FixedBarComponentEServiceSpan' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 14px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(0, 0, 0)           |

   And The 'FixedBarComponentFeedbackSpan' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 14px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(0, 0, 0)           |

   And The 'FixedBarComponentCallcenterSpan' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 14px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(0, 0, 0)           |

   And I hover mouse over 'FixedBarComponentEmergency'
   And I wait for '2' seconds

   And The 'FixedBarComponentFeedback' element has following CSS properties
    | background-color                | rgb(230, 243, 236)    |

   And The 'FixedBarComponentCallcenter' element has following CSS properties
    | background-color                | rgb(230, 243, 236)   |

   And The 'FixedBarComponentEmergency' element has following CSS properties
    | background-color                | rgb(0, 0, 0)   |

 Scenario: Validate Fixed Bar - Functionality

  And I click on 'FixedBarComponentFeedback'
  And I wait for '2' seconds
  And I switch browser
  And Current URL contains 'login'
  And I switch browser
  And I wait for '2' seconds
  And The 'href' attribute of 'FixedBarComponentCallcenter' element contains 'tel:65566667'
  And The 'href' attribute of 'FixedBarComponentEmergency' element contains 'tel:997'
  And I click on 'FixedBarComponentsocialshare'
  And I wait for '1' seconds
  And The 'class' attribute of 'FixedBarComponentsocialshare' element contains 'hover'