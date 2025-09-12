@test @martyrs @Ourmartyrs
Feature: ourmartyrs: Validate AwardsCertification Page Component

  @clearcookies
  Scenario: Validate Security for Page opening

    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Our Martyrs Field Visibility
    Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/about/our-martyrs'
    And 'OurMartyrsComponent' component exists on the page
    And I scroll to 'OurMartyrsComponent'
    And 'OurMartyrsComponentTitle' is visible
    And 'OurMartyrsComponentImg' is visible
    And 'OurMartyrsComponentDate' is visible
    And 'OurMartyrsComponentDesignation' is visible

  Scenario: Validate Our Martyrs UI (Font size,family and weight,Letter spacing,Line height)

    And The 'OurMartyrsComponentTitle' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | -0.48px                      |
      | Color                     | rgb(0, 0, 0)                 |

    And The 'OurMartyrsComponentDate' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |

    And The 'OurMartyrsComponentDesignation' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | letter-spacing            | normal                       |
      | font-weight               | 500                          |

  Scenario: Validate Our Martyrs Hover on image
    And I hover mouse over 'OurMartyrsComponentitem'
    And I wait for '1' seconds
    And The 'OurMartyrsComponentImg' element has following CSS properties
      | scale                      | 1.05                        |

  Scenario: Validate Our Martyrs - Functionality - Load more

    And Total count of 'OurMartyrsComponentitem' is 9
    And I click on 'OurMartyrsComponentLoadmore'
    And I wait for '1' seconds
    And Total count of 'OurMartyrsComponentitem' is 11
