@lixil @test @Header
Feature: Header: Validate Header (SCDA Homepage)

  @clearcookies
  Scenario: Validate Security for Page opening

    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Header - Visibility of All links and Logo
    And 'HeaderComponent' component exists on the page
    And I scroll to 'HeaderComponent'
    And 'HeaderComponent_Home' is visible
    And 'HeaderComponent_About' is visible
    And 'HeaderComponent_Services' is visible
    And 'HeaderComponent_Media' is visible
    And 'HeaderComponent_Opendata' is visible
    And 'HeaderComponent_Findus' is visible
    And 'HeaderComponent_FAQ' is visible
    And 'HeaderComponent_LanguageDD' is visible
    And 'HeaderComponent_AccessIcon' is visible
    And 'HeaderComponent_Theme' is visible
    And 'HeaderComponent_Search' is visible

  Scenario: Validate Header - Logo Visible and Navigation
    And 'HeaderComponent_leftlogo' is visible
    And 'HeaderComponent_Rightlogo' is visible
    And I click on 'HeaderComponent_leftlogo'
    And Current URL contains 'sdd.ishj.ae/en'
    And I click on 'HeaderComponent_Rightlogo'
    And Current URL contains 'sdd.ishj.ae/en'

  Scenario: Validate Header - Hover for About us -> Child link
    And Total count of 'HeaderComponent_About' is 1
    When I hover mouse over 'HeaderComponent_About'
    And  I wait for '1' seconds
    When I hover mouse over 'HeaderComponent_AboutAboutus'
    And  I wait for '1' seconds
    And The 'HeaderComponent_AboutAboutus' element has following CSS properties
      | color                | rgb(23, 143, 82)              |
    And Total count of 'HeaderComponent_AboutHovercount' is 7

  Scenario: Validate Header - Navigation for About us -> Children links
    Then I click on 'HeaderComponent_About'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_AboutAboutus'
    And Current URL contains Either of 'about' or 'us'

    Then I click on 'HeaderComponent_About'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_AboutPartner'
    And Current URL contains Either of 'partner' or 'our'

    Then I click on 'HeaderComponent_About'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_AboutAwards'
    And Current URL contains Either of 'awards' or 'certification'

    Then I click on 'HeaderComponent_About'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_Aboutregulations'
    And Current URL contains Either of 'awards' or 'certification'

    Then I click on 'HeaderComponent_About'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_AboutCareers'
    And Current URL contains Either of 'awards' or 'certification'

  Scenario: Validate Header - Navigation for Services link
    And I click on 'HeaderComponent_ServicesAnchor'
    And Current URL contains Either of 'Services' or 'service'

  Scenario: Validate Header - Hover for Media and -> Children links
    When I hover mouse over 'HeaderComponent_Media'
    When I hover mouse over 'HeaderComponent_MediaNews'
    And  I wait for '2' seconds
    And The 'HeaderComponent_MediaNews' element has following CSS properties
      | color                | rgb(23, 143, 82)      |

  Scenario: Validate Header - Navigation for Media -> Children links
    When I click on 'HeaderComponent_Media'
    And  I wait for '2' seconds
    And I click on 'HeaderComponent_MediaNews'
    And  I wait for '2' seconds
    And Current URL contains 'news'

    When I click on 'HeaderComponent_Media'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_MediaEvents'
    And  I wait for '2' seconds
    And Current URL contains Either of 'Events' or 'events'

    When I click on 'HeaderComponent_Media'
    And  I wait for '2' seconds
    And I click on 'HeaderComponent_MediaGallery'
    And  I wait for '2' seconds
    And Current URL contains Either of 'Gallery' or 'gallery'

    When I click on 'HeaderComponent_Media'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_MediaAwareness'
    And  I wait for '2' seconds
    And Current URL contains Either of 'awareness' or 'Awareness'

  Scenario: Validate Header - Navigation for OpenData link
    When I click on 'HeaderComponent_Opendata'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_Opendata'
    And  I wait for '2' seconds
    And Current URL contains Either of 'Open' or 'data'

  Scenario: Validate Header - Navigation for FindUs -> Children links
    When I click on 'HeaderComponent_Findus'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_FindusContact'
    And  I wait for '2' seconds
    And Current URL contains 'contact'

    When I click on 'HeaderComponent_Findus'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_FindusServCenter'
    And  I wait for '2' seconds
    And Current URL contains Either of 'Service' or 'center'

    When I click on 'HeaderComponent_Findus'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_FindusFireCenter'
    And  I wait for '2' seconds
    And Current URL contains Either of 'Fire' or 'stations'

  Scenario: Validate Header - Navigation for FAQ link
    When I click on 'HeaderComponent_FAQ'
    And  I wait for '1' seconds
    And I click on 'HeaderComponent_FAQ'
    And Current URL contains Either of 'Faqs' or 'faq'

  Scenario: Validate Header - language switcher
    And I click on 'HeaderComponent_LanguageDD'
    And I click on 'HeaderComponent_LanguageDDArabic'
    And I wait for '1' seconds
    And Current URL contains '/ar/'
    And I click on 'HeaderComponent_LanguageDD'
    And I wait for '1' seconds
    And I click on 'HeaderComponent_LanguageDDEnglish'
    And I wait for '1' seconds
    And Current URL contains '/en'

  Scenario: Validate Header - Theme change
    And I click on 'HeaderComponent_Theme'
    And I wait for '1' seconds
    And The 'class' attribute of 'HeaderComponent_BGcolor' element contains 'dark'
    And I click on 'HeaderComponent_Theme'
    And I wait for '1' seconds
    And The 'class' attribute of 'HeaderComponent_BGcolor' element do not contains 'dark'

#  Scenario: Validate Header - Accessibility
#
#    When I hover mouse over 'HeaderComponent_About'
#    And  I wait for '2' seconds
#    And I click on 'HeaderComponent_AboutAboutus'
#    And Current URL contains 'about'
#
  Scenario: Validate Header - Search
    And I click on 'HeaderComponent_Search'
    And I click on 'HeaderComponent_SearchXbtn'

  Scenario: Validate Header - UI (Font size,family and weight,Letter spacing,Line height)

    And The 'HeaderComponent_Home_span' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 24px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_About' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 24px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_AboutAboutus' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_AboutMartyrs' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_MediaNews' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_MediaEvents' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |

    And The 'HeaderComponent_Search_Span' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | letter-spacing            |     0.2px                    |