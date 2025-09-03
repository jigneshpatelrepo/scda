@lixil @test @SCDAhomepage @Footer
Feature: Footer: Validate SCDA Homepage

  @clearcookies

   Scenario: Validate Footer - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
#    Then I navigate to 'https://dev-sdd.ishj.ae/en'
#    And I wait for '3' seconds
#    And 'Advancebutton' is visible
#    And I click on 'Advancebutton'
#    And  I click on 'Advancebuttonproceed'
#    And I wait for '3' seconds
    And 'FooterComponent' component exists on the page
    And I scroll to 'FooterComponent'
    And 'FooterComponentLeftlogo' is visible
    And 'FooterComponentRightlogo' is visible
    And 'FooterComponentAboutLink' is visible
    And 'FooterComponentFindUs' is visible
    And 'FooterComponentMedia' is visible
    And 'FooterComponentQuickLInks' is visible
    And 'FooterComponentJoinNewsletter' is visible
    And 'FooterComponentAboutLinkItem1' is visible
    And 'FooterComponentFindusItem1' is clickable
    And 'FooterComponentMediaItem1' is clickable
    And 'FooterComponentQuicklinksItem1' is clickable
    And 'FooterComponentDisclaimer' is clickable
    And 'FooterComponentPrivacy' is clickable
    And 'FooterComponentSitemap' is clickable
    And 'FooterComponentTermsandCondition' is clickable
    And 'FooterComponentMonthltVisitors' is visible
    And 'FooterComponentLastupdated' is visible
    And 'FooterComponentallrightreserved' is visible
    And 'FooterComponentFollowus' is visible

    And The 'FooterComponentLeftlogo' element has following CSS properties
      | width                | 131px                         |
      | height               | 198px                         |

    And The 'FooterComponentRightlogo' element has following CSS properties
      | width                | 152px                         |
      | height               | 39.0375px                         |

   And The 'FooterComponentAboutLink' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponentAboutLinkItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

   And The 'FooterComponentFindUs' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponentFindusItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

   And The 'FooterComponentMedia' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponentMediaItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |


   And The 'FooterComponentQuickLInks' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponentQuicklinksItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

 Scenario: Validate Footer - Functionality

  And 'alphanumerical' text is visible in 'FooterComponentLastupdated'
  And 'alphanumerical' text is visible in 'FooterComponentallrightreserved'
  And 'alphanumerical' text is visible in 'FooterComponentMonthltVisitors'