@lixil @test @SCDAhomepage @Home4cardcarousel_
Feature: 4XCard_carousel: Validate 4X cardcarousel (SCDA Homepage)

  @clearcookies

  Scenario: Validate Security for Page opening
    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And '4cardcarousel_Component' component exists on the page
    And I scroll to '4cardcarousel_Component'
    And '4cardcarousel_Eyebrow' is visible
    And '4cardcarousel_Title' is visible
    And '4cardcarousel_LinkPartner' is visible
    And '4cardcarousel_LinkCTAAwards' is visible
    And '4cardcarousel_Image' is visible
    And '4cardcarousel_CTAAnchorPartner' is clickable

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) -UI (Font size,family and weight,Letter spacing,Line height)

    And The '4cardcarousel_Eyebrow' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            | 0.2px                       |
      | text-transform            | uppercase                    |
    And The '4cardcarousel_Title' element has following CSS properties
      | font-size                 | 40px                         |
      | line-height               | 48px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            | normal                       |

    And The '4cardcarousel_CTAPartnerSpan' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |        0.2px                 |

  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) - Functionalities

    And I click on '4cardcarousel_Image'
    And I switch browser
    And Current URL contains 'https'
    And I switch browser
    And I wait for '1' seconds
    And I hover mouse over '4cardcarousel_ImageforHover'
    And I wait for '1' seconds
    And The '4cardcarousel_ImageforHover' element has following CSS properties
      | background-color           | rgb(230, 243, 236)       |

#clicking on awards tab
  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) - Functionalities (Clicking ,Hover)
    And I click on '4cardcarousel_LinkCTAAwards'
    And I wait for '1' seconds
    And '4cardcarousel_LinkCTAAwardsTitle' is visible
    And I hover mouse over '4cardcarousel_ImageforHover'
    And I wait for '3' seconds
    And The '4cardcarousel_ImageforHover' element has following CSS properties
      | background-color            | rgb(230, 243, 236)       |
    And The '4cardcarousel_CTAAwardsSpan' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |        0.2px                 |

    And I click on '4cardcarousel_CTAAnchorAwards'
    And Current URL contains 'awards'
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds
