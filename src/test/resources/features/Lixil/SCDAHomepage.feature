@lixil @test @SCDAhomepage
Feature: SCDAHomepage: Validate SCDA Homepage

  @clearcookies

#   Scenario: Validate 3X card carousel - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '5' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds
#    And '3cardcarouselComponent' component exists on the page
#    And I scroll to '3cardcarouselComponent'
#    And I wait for '1' seconds
#    And '3cardcarouselHeading' is visible
#    And '3cardcarouselEyebrow' is visible
#    And '3cardcarouselcardicon' is visible
#    And '3cardcarouselcardsingletag' is visible
#    And '3cardcarouselcardmultitpletag' is visible
#    And '3cardcarouselcardcta' is visible
#    And '3cardcarouselcardctaCommon' is visible
#    And '3cardcarouselcardPreviousBtn' is visible
#    And '3cardcarouselcardNxtBtn' is visible
#    And '3cardcarouselcardNxtBtn' is clickable
#
#    And The '3cardcarouselEyebrow' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 16px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | letter-spacing            |                   normal     |
#     | text-transform            | uppercase                    |

#     And The '3cardcarouselHeading' element has following CSS properties
#       | font-size                 | 48px                         |
#       | line-height               | 48px                         |
#       | font-family               | Tajawal, "Tajawal Fallback"  |
#       | font-weight               | 400                          |
##       | letter-spacing            |       -1.92px or -0.48px    |
#    And The '3cardcarouselcardtitle' element has following CSS properties
#      | font-size                 | 24px                         |
#      | line-height               | 32px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 400                          |
#      | letter-spacing            |                   -0.48px    |
#    And The '3cardcarouselcardsingletag' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 16px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | letter-spacing            |                   normal     |
#
#
#  Scenario: Validate 3X card carousel functionality
#
#    Then '3cardcarouselcardPreviousBtn' is disabled
#    And I click on '3cardcarouselcardNxtBtn'
#    And I wait for '1' seconds
#    And The 'class' attribute of '3cardcarouselcardNxtBtnClickAttr' element contains 'splide__slide flex is-prev'
#    And I click on '3cardcarouselcardPreviousBtn'
#    And I wait for '1' seconds
#    And The 'class' attribute of '3cardcarouselcardNxtBtnClickAttr' element contains 'splide__slide flex is-active is-visible'
#    And I hover mouse over '3cardcarouselFirstcard'
#    And I wait for '1' seconds
#    And The 'class' attribute of '3cardcarouselFirstcard' element contains 'active-cta after:h-2 border-transparent bg-primary-100 after:bg-primary-200'
#    And I click on '3cardcarouselcardcta'
#    And Current URL contains 'building-completion'
#    And I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I click on '3cardcarouselcardctaCommon'
#    And Current URL contains 'services'
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#
#
#  Scenario: Validate Onectabox Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    And 'onectaboxComponent' component exists on the page
#    And 'onectaboxEyebrow' is visible
#    And 'onectaboxTitle' is visible
#    And 'onectaboxCTAAnchor' is visible
#    And 'onectaboxImage' is visible
#
#    And The 'onectaboxEyebrow' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 16px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | letter-spacing            |                   normal     |
#      | text-transform            | uppercase                    |

#    And The 'onectaboxTitle' element has following CSS properties
#      | font-size                 | 48px                         |
#      | line-height               | 48px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 400                          |
#      | letter-spacing            |            -0.48px           |
#
#    And The 'onectaboxImage' element has following CSS properties
#      | Height                    | 329px                        |
#      | width                     | 539.625px                    |
#
#    And The 'onectaboxCTASpan' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 14px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | padding-left              | 16px                         |
#      | padding-right             | 0px                          |
#
#    And I hover mouse over 'onectaboxCTAAnchor'
#    And I wait for '1' seconds
#    And The 'onectaboxCTASpan' element has following CSS properties
#      | padding-left              | 0px                         |
#      | padding-right             | 16px                        |
#
#
#  Scenario: Validate onectabox functionality
#
#    And I click on 'onectaboxCTAAnchor'
#    And I wait for '1' seconds
#    And Current URL contains 'find-us'
#    And I navigate to 'https://dev-sdd.ishj.ae/en'
#
#
#  Scenario: Validate Carouselwith- 4Cards (Awards/Partner) -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
##    Then I navigate to 'https://dev-sdd.ishj.ae/en'
##    And I wait for '5' seconds
##    And 'Advancebutton' is visible
##    And I click on 'Advancebutton'
##    And  I click on 'Advancebuttonproceed'
##    And I wait for '3' seconds
#
#    And '4cardcarouselComponent' component exists on the page
#    And '4cardcarouselEyebrow' is visible
#    And '4cardcarouselTitle' is visible
#    And '4cardcarouselLinkPartner' is visible
#    And '4cardcarouselLinkCTAAwards' is visible
#    And '4cardcarouselImage' is visible
#    And '4cardcarouselCTAAnchorPartner' is clickable
#
#  Scenario: Validate Carouselwith- 4Cards functionality
#
#    And I click on '4cardcarouselImage'
#    And I wait for '1' seconds
#    And I open new tab with url 'https://www.google.com/'
#    And I switch browser
#    And  I click on '4cardcarouselLinkPartner'
#
#    And The '4cardcarouselEyebrow' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 16px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | letter-spacing            | normal                       |
#       | text-transform            | uppercase                    |
#    And The '4cardcarouselTitle' element has following CSS properties
#      | font-size                 | 48px                         |
#      | line-height               | 48px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 400                          |
#      | letter-spacing            | -1.92px                      |
#
#    And The 'onectaboxCTASpan' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 14px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | padding-left              | 16px                         |
#      | padding-right             | 0px                          |
#
#    And The '4cardcarouselCTAPartnerSpan' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 14px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#
#    And I hover mouse over '4cardcarouselImage'
#    And I wait for '3' seconds
#    And The '4cardcarouselImageforHover' element has following CSS properties
#      | background-color           | rgb(230, 243, 236)       |
#    #clicking on awards tab
#    And I click on '4cardcarouselLinkCTAAwards'
#    And I wait for '1' seconds
#    And '4cardcarouselLinkCTAAwardsTitle' is visible
#
#    And I hover mouse over '4cardcarouselImageforAwards'
#    And I wait for '3' seconds
#    And The '4cardcarouselImageforHover' element has following CSS properties
#      | background-color            | rgb(230, 243, 236)       |
#
#    And The '4cardcarouselCTAAwardsSpan' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 14px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#
#    And I click on '4cardcarouselCTAAnchorAwards'
#    And Current URL contains 'awards'
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '3' seconds


#  Scenario: Validate FAQ -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '5' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds

#    And 'FAQComponent' component exists on the page
#    And I scroll to 'FAQComponent'
#    And 'FAQComponentTitle' is visible
#    And 'FAQComponentEyebrow' is visible
#    And 'FAQComponentCTA' is visible
#    And 'FAQComponentItem1' is visible
#
#    And The 'FAQComponentEyebrow' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 16px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | letter-spacing            | normal                       |
#      | text-transform            | uppercase                    |

#    And The 'FAQComponentTitle' element has following CSS properties
#      | font-size                 | 48px                         |
#      | line-height               | 48px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 400                          |
#      | letter-spacing            | -0.48px                      |

#    And The 'FAQComponentCTASpan' element has following CSS properties
#      | font-size                 | 14px                         |
#      | line-height               | 14px                         |
#      | font-family               | Tajawal, "Tajawal Fallback"  |
#      | font-weight               | 500                          |
#      | padding-left              | 16px                         |
#      | padding-right             | 0px                          |
#
#  Scenario: Validate FAQ- functionality (Expand / collapsed - Navigation)
#
#    And I click on 'FAQComponentItem1'
#    And I wait for '1' seconds
#    And The 'aria-expanded' attribute of 'FAQComponentItem1Btn' element is 'true'
#    And The 'FAQComponentItem1Question' element has following CSS properties
#      | color                     |  rgb(23, 143, 82)            |
#
#    And I click on 'FAQComponentItem1'
#    And I wait for '1' seconds
#    And The 'aria-expanded' attribute of 'FAQComponentItem1Btn' element is 'false'
#
#    And Total count of 'FAQComponentTotalItem' is 4
#    And I click on 'FAQComponentCTA'
#    And Current URL contains 'faq'
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'

  Scenario: Validate News -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '5' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds

    And 'NewsComponent' component exists on the page
    And I scroll to 'NewsComponent'
    And 'NewsComponentTitle' is visible
    And 'NewsComponentEyebrow' is visible
    And 'NewsComponentCTA' is visible
    And 'NewsComponentImage' is visible
    And 'NewsComponentDate' is visible
    And 'NewsComponentItem1Title' is visible

    And The 'NewsComponentEyebrow' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |
      | text-transform            | uppercase                    |
    And The 'NewsComponentTitle' element has following CSS properties
      | font-size                 | 48px                         |
      | line-height               | 48px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
#      | letter-spacing            | -0.48px                      |

    And The 'NewsComponentCTASpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 16px                         |
      | padding-right             | 0px                          |

    And The 'NewsComponentItem1Title' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |

    And The 'NewsComponentDate' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | padding-left              | 0px                          |
      | padding-right             | 0px                          |
      | text-transform            | uppercase                    |

    Scenario: Validate FAQ- functionality (Expand / collapsed - Navigation)


    And I hover mouse over 'NewsComponentImage2'
    And I wait for '2' seconds
    And The 'NewsComponentImage2' element has following CSS properties
      | flex                     |  1 1 28.561%           |
      And I hover mouse over 'NewsComponentImage'
      And I wait for '2' seconds
      And The 'NewsComponentImage' element has following CSS properties
        | flex                     |  1 1 28.561%          |