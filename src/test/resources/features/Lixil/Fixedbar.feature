@lixil @test @SCDAhomepage @FixedBar
Feature: Footer_Fixedbar: Validate Fixed Bard (SCDA Homepage)

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
    And 'FixedBarComponent_Emergency' is visible
    And 'FixedBarComponent_Emergency' is clickable
    And 'FixedBarComponent_EService' is visible
    And 'FixedBarComponent_EService' is clickable
    And 'FixedBarComponent_Feedback' is visible
    And 'FixedBarComponent_Feedback' is clickable
    And 'FixedBarComponent_Callcenter' is visible
    And 'FixedBarComponent_Callcenter' is clickable

  Scenario: Validate FixedBar - UI (Font size,family and weight,Letter spacing,Line height)

    And The 'FixedBarComponent_EmergencySpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)           |

    And The 'FixedBarComponent_EServiceSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)           |

    And The 'FixedBarComponent_FeedbackSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)           |

    And The 'FixedBarComponent_CallcenterSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)           |

  Scenario: Validate FixedBar - Hover and UI verification
    And I hover mouse over 'FixedBarComponent_Emergency'
    And I wait for '2' seconds
    And The 'FixedBarComponent_Feedback' element has following CSS properties
      | background-color                | rgb(230, 243, 236)    |
    And The 'FixedBarComponent_Callcenter' element has following CSS properties
      | background-color                | rgb(230, 243, 236)    |
    And The 'FixedBarComponent_Emergency' element has following CSS properties
      | background-color                |       rgb(0, 0, 0)    |

  Scenario: Validate Fixed Bar - Functionality
    And I click on 'FixedBarComponent_Feedback'
    And I wait for '2' seconds
    And I switch browser
    And Current URL contains 'login'
    And I switch browser
    And I wait for '2' seconds
    And The 'href' attribute of 'FixedBarComponent_Callcenter' element contains 'tel:65566667'
    And The 'href' attribute of 'FixedBarComponent_Emergency' element contains 'tel:997'
    And I click on 'FixedBarComponent_socialshare'
    And I wait for '1' seconds
    And The 'class' attribute of 'FixedBarComponent_socialshare' element contains 'hover'
    And The 'class' attribute of 'FixedBarComponent_blackbar' element do not contains 'bg-primary-400 border-b-1 border-neutral-500'
    And I scroll to 'HeaderComponent_Rightlogo'
    And I wait for '5' seconds
    And The 'class' attribute of 'FixedBarComponent_blackbar' element contains 'gap-8'
