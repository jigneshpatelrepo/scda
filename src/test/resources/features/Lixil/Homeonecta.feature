@lixil @test @SCDAhomepage @Homeonecta
Feature: one_cta_Component: Validate onectabox component (SCDA Homepage)

  @clearcookies

  Scenario: Validate Security for Page opening
    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate onectabox_ Visibility
    And I scroll to 'onectaboxComponent'
    And 'onectaboxComponent' component exists on the page
    And 'onectabox_Eyebrow' is visible
    And 'onectabox_Title' is visible
    And 'onectabox_CTAAnchor' is visible
    And 'onectabox_Image' is visible

  Scenario: Validate onectabox_ UI (Font size,family and weight,Letter spacing,Line height)
    And The 'onectabox_Eyebrow' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |      0.2px                   |
      | text-transform            | uppercase                    |

    And The 'onectabox_Title' element has following CSS properties
      | font-size                 | 40px                         |
      | line-height               | 48px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            |      normal                  |

    And The 'onectabox_Image' element has following CSS properties
      | height                    | 353px                        |
      | width                     | 579px                        |

    And The 'onectabox_CTASpan' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |        0.2px                 |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

  Scenario: Validate onectabox_ Mousehover Functionalities
    And I hover mouse over 'onectabox_CTAAnchor'
    And I wait for '2' seconds
    And The 'onectabox_CTASpan' element has following CSS properties
      | padding-left              | 0px                         |
      | padding-right             | 16px                        |

  Scenario: Validate onectabox_ Functionalities
    And I click on 'onectabox_CTAAnchor'
    And I wait for '1' seconds
    And Current URL contains 'find-us'
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds