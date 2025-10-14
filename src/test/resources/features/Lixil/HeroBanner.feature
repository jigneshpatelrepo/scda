@herobanner
Feature: HeroBanner : Validate the hero banner

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for page load
#    And I click on 'Advance'
#    And I click on 'Pagelink'
#    And I wait for '3' seconds

  Scenario: Validate FAQ -Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And 'HeroBannerVisible' component exists on the page
    And 'Slide1Description' is visible
    And 'Slide1Title' is visible
    And 'SlideNumber' is visible
    And Total count of 'Slides_Total_Count' is 3
    And I click on 'HeroBannerVisible'
    And The 'class' attribute of 'First_Slide' element contains 'is-active'


    And The 'Slide1Description' element has following CSS properties
      | font-size      | 44px                        |
      | line-height    | 56px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And The 'Slide1Title' element has following CSS properties
      | font-size      | 16px                        |
      | line-height    | 28px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | letter-spacing | 0.2px                   |

    And The 'SlideNumber' element has following CSS properties
      | font-size      | 14px                        |
      | line-height    | 24px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | letter-spacing | 0.2px                         |
      | font-weight    | 700                         |

  Scenario: Validate the functionality of arrow button
    And I click on 'NextArrow'
    And The 'class' attribute of 'Second_Slide' element contains 'is-active'
    And I click on 'NextArrow'
    And The 'class' attribute of 'Third_Slide' element contains 'is-active'
    And I click on 'PreviousArrow'
    And The 'class' attribute of 'Second_Slide' element contains 'is-active'
    And I wait for '2' seconds

  Scenario: Validate the functionality of Learn more CTA
    And I click on 'CTA'
    And Current URL contains 'dev-sdd.ishj.ae/en'
