@test @Contactuspage @Contactus @test1
Feature: Contactus: Validate Twoctabox Component on Contactus page

  @clearcookies
  Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

 Scenario: Validate TwoctaBox Component - Visibility Left side
    Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/contact-us'
    And 'TwoCtaBox_component' component exists on the page
    And I scroll to 'TwoCtaBox_component'
    And 'TwoCtaBox_component_Card1Title' is visible
    And 'TwoCtaBox_component_Card1Desc' is visible
    And 'TwoCtaBox_component_Card1Cta' is clickable
    And 'TwoCtaBox_component_Card1CtaSpan' is visible

 Scenario: Validate TwoctaBox Component - Visibility Right side
  And 'TwoCtaBox_component' component exists on the page
  And I scroll to 'TwoCtaBox_component'
  And 'TwoCtaBox_component_Card2Title' is visible
  And 'TwoCtaBox_component_Card2Desc' is visible
  And 'TwoCtaBox_component_Card2Cta' is clickable
  And 'TwoCtaBox_component_Card2CtaSpan' is visible

 Scenario: Validate TwoCTa Box - UI (Font size,family and weight,Letter spacing,Line height)

   And The 'TwoCtaBox_component_Card1Title' element has following CSS properties
    | font-size                 | 40px                         |
    | line-height               | 48px                         |
    | font-family               | Inter, "Inter Fallback"      |
    | font-weight               | 400                          |
    | letter-spacing            | normal                       |

   And The 'TwoCtaBox_component_Card1Desc' element has following CSS properties
    | font-size                 | 16px                         |
    | line-height               | 28px                         |
    | font-family               | Inter, "Inter Fallback"      |
    | font-weight               | 400                          |
    | letter-spacing            | 0.2px                        |

  And The 'TwoCtaBox_component_Card1CtaSpan' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 14px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate  TwoCTa Box - Functionality
  And I click on 'TwoCtaBox_component_Card2Cta' if available
  And Current URL contains 'news'