@lixil @test @SCDAhomepage @FixedBar
Feature: Fixedbar: Validate SCDA Homepage

  @clearcookies

  Scenario: Validate Security for Page opening

  Then I navigate to 'https://dev-sdd.ishj.ae/en/'
  And I wait for '3' seconds
  And I click on 'Advancebutton' if available
  And  I click on 'Advancebuttonproceed' if available
  And I wait for '3' seconds

 Scenario: Validate FixedBar - Visibility

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

 Scenario: Validate FixedBar - UI (Font size,family and weight,Letter spacing,Line height)

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

 Scenario: Validate FixedBar - Hover and UI verification
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
  And The 'class' attribute of 'FixedBarComponentblckbar' element do not contains 'bg-primary-400 border-b-1 border-neutral-500'
  And I scroll to 'FooterComponentDisclaimer'
  And I wait for '2' seconds
 And The 'class' attribute of 'FixedBarComponentblckbar' element contains 'bg-primary-400 border-b-1 border-neutral-500'