@lixil @test @SCDAhomepage @Home4cardcarousel
Feature: Home4cardcarousel: Validate SCDA Homepage - Home4cardcarousel

  @clearcookies

  Scenario: Validate Security for Page opening

    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And '4cardcarouselComponent' component exists on the page
    And I scroll to '4cardcarouselComponent'
    And '4cardcarouselEyebrow' is visible
    And '4cardcarouselTitle' is visible
    And '4cardcarouselLinkPartner' is visible
    And '4cardcarouselLinkCTAAwards' is visible
    And '4cardcarouselImage' is visible
    And '4cardcarouselCTAAnchorPartner' is clickable

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) -UI (Font size,family and weight,Letter spacing,Line height)

    And The '4cardcarouselEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
       | text-transform            | uppercase                    |
    And The '4cardcarouselTitle' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | -0.48px                      |

    And The '4cardcarouselCTAPartnerSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) - Functionalities

    And I click on '4cardcarouselImage'
    And I switch browser
    And Current URL contains 'https'
    And I switch browser
    And I wait for '1' seconds
    And I hover mouse over '4cardcarouselImageforHover'
    And I wait for '1' seconds
    And The '4cardcarouselImageforHover' element has following CSS properties
      | background-color           | rgb(230, 243, 236)       |

#clicking on awards tab
  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) - Functionalities (Clicking ,Hover)

    And I click on '4cardcarouselLinkCTAAwards'
    And I wait for '1' seconds
    And '4cardcarouselLinkCTAAwardsTitle' is visible

    And I hover mouse over '4cardcarouselImageforHover'
    And I wait for '3' seconds
    And The '4cardcarouselImageforHover' element has following CSS properties
      | background-color            | rgb(230, 243, 236)       |

    And The '4cardcarouselCTAAwardsSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |

    And I click on '4cardcarouselCTAAnchorAwards'
    And Current URL contains 'awards'
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds
