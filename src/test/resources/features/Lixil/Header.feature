@lixil @test @Header
Feature: Header: Validate SCDA Header

  @clearcookies

   Scenario: Validate Header - Visibility of All links and Logo
    Then I navigate to 'https://dev-sdd.ishj.ae/en'
    And I wait for '3' seconds
    And 'Advancebutton' is visible
    And I click on 'Advancebutton'
    And  I click on 'Advancebuttonproceed'
    And I wait for '3' seconds
    And 'HeaderComponent' component exists on the page
    And I scroll to 'HeaderComponent'
    And 'HeaderComponentHome' is visible
    And 'HeaderComponentAbout' is visible
    And 'HeaderComponentServices' is visible
    And 'HeaderComponentMedia' is visible
    And 'HeaderComponentOpendata' is visible
    And 'HeaderComponentFindus' is visible
    And 'HeaderComponentFAQ' is visible
    And 'HeaderComponentLanguageDD' is visible
    And 'HeaderComponentAccessIcon' is visible
    And 'HeaderComponentTheme' is visible
    And 'HeaderComponentSearch' is visible

  Scenario: Validate Header - Logo Visible and Navigation
    And 'HeaderComponentleftlogo' is visible
    And 'HeaderComponentRightlogo' is visible
    And I click on 'HeaderComponentleftlogo'
    And Current URL contains 'sdd.ishj.ae/en'
    And I click on 'HeaderComponentRightlogo'
    And Current URL contains 'sdd.ishj.ae/en'

  Scenario: Validate Header - Hover for About us -> Child link
    And Total count of 'HeaderComponentAbout' is 1
    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '1' seconds
    When I hover mouse over 'HeaderComponentAboutAboutus'
    And  I wait for '1' seconds
    And The 'HeaderComponentAboutAboutus' element has following CSS properties
      | color                | rgb(23, 143, 82)              |

    And Total count of 'HeaderComponentAboutHovercount' is 7

  Scenario: Validate Header - Navigation for About us -> Children links

    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '2' seconds
    And I click on 'HeaderComponentAboutAboutus'
    And Current URL contains 'about'

    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentAboutPartner'
    And Current URL contains Either of 'partner' or 'our'

    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentAboutAwards'
    And Current URL contains Either of 'awards' or 'certification'

    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentAboutregulations'
    And Current URL contains Either of 'awards' or 'certification'

    When I hover mouse over 'HeaderComponentAbout'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentAboutCareers'
    And Current URL contains Either of 'awards' or 'certification'

  Scenario: Validate Header - Navigation for Services link

    And I click on 'HeaderComponentServicesAnchor'
    And Current URL contains Either of 'Services' or 'service'

  Scenario: Validate Header - Hover for Media and -> Children links
    And Total count of 'HeaderComponentMedia' is 1
    When I hover mouse over 'HeaderComponentMedia'
    And  I wait for '1' seconds
    When I hover mouse over 'HeaderComponentMediaNews'
    And  I wait for '1' seconds
    And The 'HeaderComponentMediaNews' element has following CSS properties
      | color                | rgb(23, 143, 82)              |

    And Total count of 'HeaderComponentMediaHoverCount' is 4

  Scenario: Validate Header - Navigation for Media -> Children links

    When I hover mouse over 'HeaderComponentMedia'
    And  I wait for '2' seconds
    And I click on 'HeaderComponentMediaNews'
    And Current URL contains 'news'

    When I hover mouse over 'HeaderComponentMedia'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentMediaEvents'
    And Current URL contains Either of 'Events' or 'events'

    When I hover mouse over 'HeaderComponentMedia'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentMediaGallery'
    And Current URL contains Either of 'Gallery' or 'gallery'

    When I hover mouse over 'HeaderComponentMedia'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentMediaAwareness'
    And Current URL contains Either of 'awareness' or 'Awareness'


  Scenario: Validate Header - Navigation for OpenData link

    When I hover mouse over 'HeaderComponentOpendata'
    And  I wait for '2' seconds
    And I click on 'HeaderComponentOpendata'
    And Current URL contains Either of 'Open' or 'data'


  Scenario: Validate Header - Navigation for FindUs -> Children links

    When I hover mouse over 'HeaderComponentFindus'
    And  I wait for '2' seconds
    And I click on 'HeaderComponentFindusContact'
    And Current URL contains 'contact'

    When I hover mouse over 'HeaderComponentFindus'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentFindusServCenter'
    And Current URL contains Either of 'Service' or 'center'

    When I hover mouse over 'HeaderComponentFindus'
    And  I wait for '1' seconds
    And I click on 'HeaderComponentFindusFireCenter'
    And Current URL contains Either of 'Fire' or 'stations'

  Scenario: Validate Header - Navigation for FAQ link

    When I hover mouse over 'HeaderComponentFAQ'
    And  I wait for '2' seconds
    And I click on 'HeaderComponentFAQ'
    And Current URL contains Either of 'Faqs' or 'faq'

  Scenario: Validate Header - language switcher

    And I click on 'HeaderComponentLanguageDD'
    And I click on 'HeaderComponentLanguageDDArabic'
    And I wait for '1' seconds
    And Current URL contains '/ar/'
    And I click on 'HeaderComponentLanguageDD'
    And I wait for '1' seconds
    And I click on 'HeaderComponentLanguageDDEnglish'
    And I wait for '1' seconds
    And Current URL contains '/en'

  Scenario: Validate Header - Theme change

    And I click on 'HeaderComponentTheme'
    And I wait for '1' seconds
    And The 'class' attribute of 'HeaderComponentBGcolor' element contains 'dark'
    And I click on 'HeaderComponentTheme'
    And I wait for '1' seconds
    And The 'class' attribute of 'HeaderComponentBGcolor' element do not contains 'dark'

#  Scenario: Validate Header - Accessibility
#
#    When I hover mouse over 'HeaderComponentAbout'
#    And  I wait for '2' seconds
#    And I click on 'HeaderComponentAboutAboutus'
#    And Current URL contains 'about'
#
  Scenario: Validate Header - Search

    And I click on 'HeaderComponentSearch'
    And I click on 'HeaderComponentSearchXbtn'


#  Scenario: Validate Header - UI (Font size,family and weight,Letter spacing,Line height)
  
#
#    And The 'FooterComponentLeftlogo' element has following CSS properties
#      | width                | 131px                         |
#      | height               | 198px                         |
#
#    And The 'FooterComponentRightlogo' element has following CSS properties
#      | width                | 152px                         |
#      | height               | 39.0375px                         |







