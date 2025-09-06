@lixil @test @SCDAhomepage @Home3Xcarousel
Feature: Home3Xcarousel: Validate on SCDA Homepage - Home3Xcarousel

  @clearcookies

   Scenario: Validate 3X card carousel - Visibility
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '3' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds
    And '3cardcarouselComponent' component exists on the page
    And I scroll to '3cardcarouselComponent'
    And I wait for '1' seconds
    And '3cardcarouselHeading' is visible
    And '3cardcarouselEyebrow' is visible
    And '3cardcarouselcardicon' is visible
    And '3cardcarouselcardsingletag' is visible
    And '3cardcarouselcardcta' is visible
    And '3cardcarouselcardctaCommon' is visible
    And '3cardcarouselcardPreviousBtn' is visible
    And '3cardcarouselcardNxtBtn' is visible
    And '3cardcarouselcardNxtBtn' is clickable
    And '3cardcarouselcardmultitpletag' is visible

  Scenario: Validate 3X card carousel - UI (Font size,family and weight,Letter spacing,Line height)

    And The '3cardcarouselEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            |                   normal     |
     | text-transform            | uppercase                    |

     And The '3cardcarouselHeading' element has following CSS properties
       | font-size                 | 48px                         |
       | line-height               | 48px                         |
       | font-family               | Tajawal, "Tajawal Fallback"  |
       | font-weight               | 400                          |
#       | letter-spacing            |       -1.92px or -0.48px    |
    And The '3cardcarouselcardtitle' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            |                   -0.48px    |
    And The '3cardcarouselcardsingletag' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            |        normal                |


  Scenario: Validate 3X card carousel functionality ( Enable and Disable )

    Then '3cardcarouselcardPreviousBtn' is disabled
    And I click on '3cardcarouselcardNxtBtn'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarouselcardNxtBtnClickAttr' element contains 'splide__slide flex is-prev'
    And I click on '3cardcarouselcardPreviousBtn'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarouselcardNxtBtnClickAttr' element contains 'splide__slide flex is-active is-visible'
    And I click on '3cardcarouselcardcta'
    And Current URL contains 'building-completion'

  Scenario: Validate 3X card carousel functionality ( Navigation )

    And I navigate to 'https://dev-sdd.ishj.ae/en'
    And I click on '3cardcarouselcardctaCommon'
    And Current URL contains 'service'
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I hover mouse over '3cardcarouselFirstcard'
    And I wait for '1' seconds
    And The 'class' attribute of '3cardcarouselFirstcard' element contains 'active-cta after:h-2 border-transparent bg-primary-100 after:bg-primary-200'