#UI / Visibility Checks , #Functional Scenarios , #Typography Checks
@lixil @test1 @greyhomepage
Feature: greystar: Validate Hero and Location Components on Home page

  @clearcookies
   Scenario: Navigate to Homepage
#     Then I navigate to 'https://greystar-velocity-staging.vercel.app/en'
     Then I view the home page
     And I wait for '3' seconds
     And I click on 'Cookiepolicy'

  Scenario: Validate Hero component visibility for all elements
    Then 'herocomponent' component exists on the page
     And I scroll to 'herocomponent'
     And I wait for '2' seconds
     And 'herocomponentimstudent' is visible
     And 'herocomponentimprofessional' is visible
     And I click on 'herocomponentimstudent'
     And 'herocomponenttitle' is visible
     And 'herocomponentshortdesc' is visible
     And 'herocomponentcta' is visible

  Scenario: Validate Hero component UI check (Font size,Color,line-height,text-transform)

    Then The 'herocomponent' element has following CSS properties
      | background-color| rgba(0, 0, 0, 1)  |

    And The 'herocomponenttitle' element has following CSS properties
      | font-size     | 64px               |
      | color         | rgb(255, 255, 255) |
      | line-height   | 64px               |
      | text-transform | uppercase         |
      |font-family     | "tt firs neue trl", __TTFirsNeue_122aa3, __TTFirsNeue_Fallback_122aa3 |
      |font-weight     |        700        |
      |letter-spacing  |       3px         |
    And The 'herocomponentshortdesc' element has following CSS properties
      | font-size      | 18px               |
      | color          | rgb(245, 245, 245) |
      | line-height    | 27px               |
      |font-family     | "tt firs neue trl", __TTFirsNeue_122aa3, __TTFirsNeue_Fallback_122aa3 |
      |letter-spacing  |       1px          |

  Scenario: Validate Hero component Functionality (Tab click, video play/pause)
    Then The 'aria-label' attribute of 'herocomponentstudentplaypause' element contains 'Pause video'
    And I click on 'herocomponentstudentplaypause'
    And I wait for '2' seconds
    And The 'aria-label' attribute of 'herocomponentstudentplaypause' element contains 'Play video'
    And I click on 'herocomponentimprofessional'
    And I wait for '2' seconds
    And I click on 'herocomponentimstudent'

  Scenario: Validate location component Visibility for all elements
    Then 'locationcomponent' component exists on the page
    And 'locationcomponentHeadline' is visible
    And 'locationcomponentdesc' is visible

  Scenario: Validate location component Functionality check (Total count, carousel previous-next button)
    Then I refresh the current page
    And I scroll to 'locationcomponent'
    And I wait and click on 'locationcomponentUK'
    And I wait for '2' seconds
    And Total count of 'locationcomponentUKEuropeitems' is 9
    And 'locationcomponentcarouselleftarrow' is disabled
    And I click on 'locationcomponentcarouselrightarrow'
    And I wait for '1' seconds
    And The 'aria-hidden' attribute of 'locationcomponentUKEuropeitemslinkparam' element contains 'true'
    And I click on 'locationcomponentcarouselleftarrow'
    And I wait for '1' seconds
    And The 'class' attribute of 'locationcomponentUKEuropeitemslinkparam' element contains 'splide__slide is-active is-visible'
    And I click on 'locationcomponentEUROPE'
    And I wait for '2' seconds
    And Total count of 'locationcomponentUKEuropeitems' is 4

  Scenario: Validate location component - Card (Visibility, CSS and Zoom)
    Then I refresh the current page
    And I wait for '2' seconds
    And 'locationcomponentcardlocation' is visible
    And 'locationcomponentcardcta' is visible
    And 'locationcomponentcardproperties' is visible
    And 'locationcomponentcardimage' is visible
    And 'locationcomponentcardcount' is exists
    And 'locationcomponentcardcta' is clickable
    And I click on 'locationcomponentcardcta'
    And I wait for '2' seconds
    And Current URL contains 'united'
    And I navigate to 'https://greystar-velocity-staging.vercel.app/en'
    And I wait for '2' seconds
    And Parameters in 'locationcomponentcardimage' for source and destination are different
#    And The 'locationcomponentcardimage' element has a CSS 'transform' property with value 'matrix(1.1, 0, 0, 1.1, 0, 0)'
    Then The 'locationcomponent' element has following CSS properties
      | background-color| rgb(255, 255, 255)  |

    And The 'locationcomponentHeadline' element has following CSS properties
      |   font-size      | 40px         |
      |   text-transform | uppercase    |
      |   font-weight    | 700          |
      |   letter-spacing |  3px         |
      |   line-height    |  44px        |
      |   color          | rgb(0, 0, 0) |
    And The 'locationcomponentdesc' element has following CSS properties
      | font-size        | 18px         |
      | font-weight      | 500          |
      | letter-spacing   |  1px         |
      | line-height      |  27px        |
      | color            | rgb(77, 77, 77)|
    And The 'locationcomponentUK' element has following CSS properties
      |  font-size      | 24px          |
      |  text-transform | uppercase     |
      |  color          | rgb(0, 0, 0)  |
    And The 'locationcomponentEUROPE' element has following CSS properties
      |  font-size      | 24px          |
      |  text-transform | uppercase     |
      |  color          | rgb(0, 0, 0)  |