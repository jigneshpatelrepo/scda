@lixil @test12 @homepage
Feature: Seismichomepage: Validate Seismichomepage

  @clearcookies

   Scenario: Validate vertical accordion
     Then I navigate to 'https://www.seismic.com'
     And I wait for '5' seconds
     And I click on 'Cookiepolicy'
     And 'verticalaccrodioncomponent' component exists on the page
     And I scroll to 'verticalaccrodioncomponent'
    And I wait for '5' seconds
     And 'verticalaccrodiontitel' is visible
     And 'verticalaccordionitem1' is expanded
     And 'verticalaccordionitem1desc' is visible
     And 'verticalaccordionitem1cta' is visible
     And 'verticalaccordionitem1cta' is clickable
     And 'verticalaccordionitemtab' is visible
     And I click on 'verticalaccordionitemtab'
    And I wait for '2' seconds
     And The 'verticalaccordionitemtab' element has following CSS properties
       | font-size | 18px |
     And 'verticalaccordionitemtab' is visible
     And I click on 'verticalaccordionitem1cta2'
     And I wait for page load
     And Current URL contains 'sales'

  Scenario: Validate carousel
    Then I navigate to 'https://www.seismic.com'
    And I wait for '5' seconds
    And I click on 'Cookiepolicy'
    And 'videocarouselcomponent' component exists on the page
    And I scroll to 'videocarouselcomponent'
    And 'videocarouselcomponentHeadline' is visible
    And 'See how Lumen transformed its growth trajectory by partnering with Seismic to improve seller performance — giving their teams the clarity, insights, and AI-powered digital sales tools to engage customers more impactfully and drive outcomes that matter.' text is visible in 'videocarouselarrowbtncompchange'
#    And The 'data-component' attribute of 'videocarouselarrowbtncompchange' element contains 'See how Lumen transformed its growth trajectory'
#    And 'See how Lumen transformed its growth trajectory ' text is visible in 'videocarouselarrowbtncompchange'
    And I click on 'videocarouselcomponentPrevBtn'
    And I wait for '5' seconds
    And 'See how Lumen transformed its growth trajectory by partnering with Seismic to improve seller performance — giving their teams the clarity, insights, and AI-powered digital sales tools to engage customers more impactfully and drive outcomes that matter.' text is not visible in 'videocarouselarrowbtncompchange'
    And I click on 'videocarouselcomponentNxtBtn'
    And 'See how Lumen transformed its growth trajectory by partnering with Seismic to improve seller performance — giving their teams the clarity, insights, and AI-powered digital sales tools to engage customers more impactfully and drive outcomes that matter.' text is visible in 'videocarouselarrowbtncompchange'

  Scenario: Validate iconcard
    And 'Iconcardcomponent' component exists on the page
    And I scroll to 'Iconcardcomponent'
    And 'Iconcardcomponentimage' is visible
    And 'Iconcardcomponenttitle' is visible
    And 'Iconcardcomponentdesc' is visible
    And 'Iconcardcomponentcta' is visible

  Scenario: Validating the Dynamic card component
    Given I hover mouse over 'first_Card'
    And The 'first_Cardimage' element has a CSS 'transform' property with value 'matrix(1.1, 0, 0, 1.1, 0, 0)'

#  Scenario: Validating the brand component
#    When I navigate to 'https://blueprint-brandx-qa.horizontaldigital.com/testing/components-all'
#    And I wait for '5' seconds
#    * 'brand_title' is visible
#    * 'brand_desc' is visible
