@lixil @test @SCDAhomepage @HomeFaqs
Feature: HomeFaqs: Validate SCDA Homepage - Faqs

  @clearcookies

  Scenario: Validate FAQ -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '3' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds

    And 'FAQComponent' component exists on the page
    And I scroll to 'FAQComponent'
    And 'FAQComponentTitle' is visible
    And 'FAQComponentEyebrow' is visible
    And 'FAQComponentCTA' is visible
    And 'FAQComponentItem1' is visible

    And The 'FAQComponentEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | text-transform            | uppercase                    |

    And The 'FAQComponentTitle' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | -0.48px                      |

    And The 'FAQComponentCTASpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

  Scenario: Validate FAQ- functionality (Expand / collapsed - Navigation)

    And I click on 'FAQComponentItem1'
    And I wait for '1' seconds
    And The 'aria-expanded' attribute of 'FAQComponentItem1Btn' element is 'true'
    And The 'FAQComponentItem1Question' element has following CSS properties
      | color                     |  rgb(23, 143, 82)            |

    And I click on 'FAQComponentItem1'
    And I wait for '1' seconds
    And The 'aria-expanded' attribute of 'FAQComponentItem1Btn' element is 'false'

    And Total count of 'FAQComponentTotalItem' is 4
    And I click on 'FAQComponentCTA'
    And Current URL contains 'faq'
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds