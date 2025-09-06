@lixil @test @SCDAhomepage @HomeNews
Feature: HomeNews: Validate SCDA Homepage - News

  @clearcookies

  Scenario: Validate News -Visibility
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '5' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds
    And 'NewsComponent' component exists on the page
    And I scroll to 'NewsComponent'
    And 'NewsComponentTitle' is visible
    And 'NewsComponentEyebrow' is visible
    And 'NewsComponentCTA' is visible
    And 'NewsComponentImage' is visible
    And 'NewsComponentDate' is visible
    And 'NewsComponentItem1Title' is visible

  Scenario: Validate News UI (Font size,family and weight,Letter spacing,Line height)

    And The 'NewsComponentEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | text-transform            | uppercase                    |
    And The 'NewsComponentTitle' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
#      | letter-spacing            | -0.48px                      |

    And The 'NewsComponentCTASpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

    And The 'NewsComponentItem1Title' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |

    And The 'NewsComponentDate' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |
      | text-transform            | uppercase                    |

    Scenario: Validate News- functionality (Hover)

    And I hover mouse over 'NewsComponentImage2'
    And I wait for '1' seconds
    And The 'NewsComponentImage2' element has following CSS properties
      |          flex            |  1 1 28.561%           |
#      |          width            |  335px                |
      And I hover mouse over 'NewsComponentImage'
      And I wait for '1' seconds
      And The 'NewsComponentImage' element has following CSS properties
        |           flex           |  1 1 28.561%          |
#        |          width            |  335px                |

  Scenario: Validate News- functionality (Navigation)
      And I click on 'NewsComponentCTA'
      And I wait for '2' seconds
      And Current URL contains 'news'
      And I navigate to 'https://dev-sdd.ishj.ae/en'
      And I click on 'NewsComponentItem1BtnAnchor'
      And I wait for '2' seconds
      And Current URL contains 'day'
      And I wait for '1' seconds
      And I navigate to 'https://dev-sdd.ishj.ae/en'
      And I wait for '1' seconds