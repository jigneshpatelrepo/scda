@lixil @test @SCDAhomepage @Home3Xcarousel
Feature: 3Xcarousel: Validate 3Xcarousel  (SCDA Homepage)

  @clearcookies

  Scenario: Validate Security for Page opening

    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate 3X card carousel - Visibility
    And '3cardcarousel_Component' component exists on the page
    And I scroll to '3cardcarousel_Component'
    And I wait for '1' seconds
    And '3cardcarousel_Heading' is visible
    And '3cardcarousel_Eyebrow' is visible
    And '3cardcarousel_cardicon' is visible
    And '3cardcarousel_cardsingletag' is visible
    And '3cardcarousel_cardcta' is visible
    And '3cardcarousel_cardctaCommon' is visible
    And '3cardcarousel_cardPreviousBtn' is visible
    And '3cardcarousel_cardNxtBtn' is visible
    And '3cardcarousel_cardNxtBtn' is clickable
    And '3cardcarousel_cardmultitpletag' is visible

  Scenario: Validate 3X card carousel - UI (Font size,family and weight,Letter spacing,Line height)

    And The '3cardcarousel_Eyebrow' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            |                   normal     |
      | text-transform            | uppercase                    |

    And The '3cardcarousel_Heading' element has following CSS properties
      | font-size                 | 40px                         |
      | line-height               | 48px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            |      normal                  |
    And The '3cardcarousel_cardtitle' element has following CSS properties
      | font-size                 | 22px                         |
      | line-height               | 36px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            |    normal                    |
    And The '3cardcarousel_cardsingletag' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            |        0.2px                 |

  Scenario: Validate 3X card carousel functionality ( Enable and Disable )
    Then '3cardcarousel_cardPreviousBtn' is disabled
    And I click on '3cardcarousel_cardNxtBtn'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarousel_cardNxtBtnClickAttr' element contains 'splide__slide flex is-prev'
    And I click on '3cardcarousel_cardPreviousBtn'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarousel_cardNxtBtnClickAttr' element contains 'splide__slide flex is-active is-visible'
    And I click on '3cardcarousel_cardcta'
    And Current URL contains Either of 'completion' or 'building'

  Scenario: Validate 3X card carousel functionality ( Navigation )
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I click on '3cardcarousel_cardctaCommon'
    And I wait for '2' seconds
    And Current URL contains 'services'

  Scenario: Validate 3X card carousel functionality ( Hover )
    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I refresh the current page
    And I wait for '1' seconds
    And I hover mouse over '3cardcarousel_Firstcard'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarousel_Firstcard' element contains 'bg-primary-200 hover:text-neutral-600 active-cta'