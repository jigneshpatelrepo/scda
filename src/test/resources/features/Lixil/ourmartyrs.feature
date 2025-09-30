@test @martyrs @Ourmartyrs
Feature: Our_martyrs: Validate Our Martyrs Page

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
    And 'OurMartyrsComponent_Title' is visible
    And 'OurMartyrsComponent_Img' is visible
    And 'OurMartyrsComponent_Date' is visible
    And 'OurMartyrsComponent_Designation' is visible

  Scenario: Validate Our Martyrs UI (Font size,family and weight,Letter spacing,Line height)

    And The 'OurMartyrsComponent_Title' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | -0.48px                      |
      | Color                     | rgb(0, 0, 0)                 |

    And The 'OurMartyrsComponent_Date' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |

    And The 'OurMartyrsComponent_Designation' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | letter-spacing            | normal                       |
      | font-weight               | 500                          |

  Scenario: Validate Our Martyrs Hover on image
    And I hover mouse over 'OurMartyrsComponent_item'
    And I wait for '1' seconds
    And The 'OurMartyrsComponent_Img' element has following CSS properties
      | scale                      | 1.05                        |

  Scenario: Validate Our Martyrs - Functionality - Load more

    And Total count of 'OurMartyrsComponent_item' is 9
    And I click on 'OurMartyrsComponent_Loadmore' if available
    And I wait for '1' seconds
    And Total count of 'OurMartyrsComponent_item' is 11
