@lixil @test @SCDAhomepage @HomeFaqs
Feature: Faqs_Home: Validate Faqs (SCDA Homepage)

  @clearcookies
  Scenario: Validate Security for Page opening
    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate FAQ -Visibility
    And 'FAQComponent' component exists on the page
    And I scroll to 'FAQComponent'
    And 'FAQComponent_Title' is visible
    And 'FAQComponent_Eyebrow' is visible
    And 'FAQComponent_CTA' is visible
    And 'FAQComponent_Item1' is visible

  Scenario: Validate FAQ - (Font size,family and weight,Letter spacing,Line height)

    And The 'FAQComponent_Eyebrow' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |                   0.2px      |
      | text-transform            | uppercase                    |

    And The 'FAQComponent_Title' element has following CSS properties
      | font-size                 | 40px                         |
      | line-height               | 48px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            |      normal                  |

    And The 'FAQComponent_Item1Question' element has following CSS properties
      | font-size                 | 22px                         |
      | line-height               | 36px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            |      normal                  |

    And The 'FAQComponent_CTASpan' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |
      | letter-spacing            |                   0.2px      |

  Scenario: Validate FAQ- functionality (Expand / collapsed - Navigation)
    And I click on 'FAQComponent_Item1'
    And I wait for '1' seconds
    And The 'aria-expanded' attribute of 'FAQComponent_Item1Btn' element is 'true'
    And The 'FAQComponent_Item1Question' element has following CSS properties
      | color                     |  rgb(23, 143, 82)            |

    And I click on 'FAQComponent_Item1'
    And I wait for '1' seconds
    And The 'aria-expanded' attribute of 'FAQComponent_Item1Btn' element is 'false'

  Scenario: Validate FAQ- functionality (Total count and Navigation)
    And Total count of 'FAQComponent_TotalItem' is 4
    And I click on 'FAQComponent_CTA'
    And Current URL contains 'faq'
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds