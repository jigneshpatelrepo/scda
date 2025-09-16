@lixil @test @SCDAhomepage @HomeNews
Feature: HomeNews: Validate SCDA Homepage - News

  @clearcookies

  Scenario: Validate Security for Page opening

    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate News Component- Visibility
    And 'NewsComponent' component exists on the page
    And I scroll to 'NewsComponent'
    And 'NewsComponent_Title' is visible
    And 'NewsComponent_Eyebrow' is visible
    And 'NewsComponent_CTA' is visible
    And 'NewsComponent_Image' is visible
    And 'NewsComponent_Date' is visible
    And 'NewsComponent_Item1Title' is visible

  Scenario: Validate News UI (Font size,family and weight,Letter spacing,Line height)

    And The 'NewsComponent_Eyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | text-transform            | uppercase                    |
    And The 'NewsComponent_Title' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
#      | letter-spacing            | -0.48px                      |

    And The 'NewsComponent_CTASpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

    And The 'NewsComponent_Item1Title' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |

    And The 'NewsComponent_Date' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |
      | text-transform            | uppercase                    |

  Scenario: Validate News- functionality (Hover)

    And I hover mouse over 'NewsComponent_Image2'
    And I wait for '1' seconds
    And The 'NewsComponent_Image2' element has following CSS properties
      |          flex            |  1 1 28.561%           |
#      |          width            |  335px                |
    And I hover mouse over 'NewsComponent_Image'
    And I wait for '1' seconds
    And The 'NewsComponent_Image' element has following CSS properties
      |           flex           |  1 1 28.561%          |
#        |          width            |  335px                |

  Scenario: Validate News- functionality (Navigation)
    And I click on 'NewsComponent_CTA'
    And I wait for '2' seconds
    And Current URL contains 'news'
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I click on 'NewsComponent_Item1BtnAnchor'
    And I wait for '2' seconds
    And Current URL contains 'day'
    And I wait for '1' seconds
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '1' seconds