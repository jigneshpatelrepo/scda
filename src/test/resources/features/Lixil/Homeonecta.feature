@lixil @test @SCDAhomepage @Homeonecta
Feature: Homeonectapage: Validate SCDA home page - Onectabox component

  @clearcookies

  Scenario: Validate Onectabox Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '3' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds
    And I scroll to 'onectaboxComponent'
    And 'onectaboxComponent' component exists on the page
    And 'onectaboxEyebrow' is visible
    And 'onectaboxTitle' is visible
    And 'onectaboxCTAAnchor' is visible
    And 'onectaboxImage' is visible

    And The 'onectaboxEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            |                   normal     |
      | text-transform            | uppercase                    |

    And The 'onectaboxTitle' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            |            -0.48px           |

    And The 'onectaboxImage' element has following CSS properties
      | height                    | 353px                        |
      | width                     | 579px                        |

    And The 'onectaboxCTASpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

    And I hover mouse over 'onectaboxCTAAnchor'
    And I wait for '2' seconds
    And The 'onectaboxCTASpan' element has following CSS properties
      | padding-left              | 0px                         |
      | padding-right             | 16px                        |


  Scenario: Validate onectabox functionality

    And I click on 'onectaboxCTAAnchor'
    And I wait for '1' seconds
    And Current URL contains 'find-us'
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds