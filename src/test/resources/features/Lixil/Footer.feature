@test @SCDAhomepage @Footer
Feature: Footer: Validate Footer (SCDA Homepage)

  @clearcookies

  Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

   Scenario: Validate Footer - Visibility
    And 'FooterComponent' component exists on the page
    And I scroll to 'FooterComponent'
    And 'FooterComponent_Leftlogo' is visible
    And 'FooterComponent_Rightlogo' is visible
    And 'FooterComponent_AboutLink' is visible
    And 'FooterComponent_FindUs' is visible
    And 'FooterComponent_Media' is visible
    And 'FooterComponent_QuickLInks' is visible
    And 'FooterComponent_JoinNewsletter' is visible
    And 'FooterComponent_AboutLinkItem1' is visible
    And 'FooterComponent_FindusItem1' is clickable
    And 'FooterComponent_MediaItem1' is clickable
    And 'FooterComponent_QuicklinksItem1' is clickable
    And 'FooterComponent_Disclaimer' is clickable
    And 'FooterComponent_Privacy' is clickable
    And 'FooterComponent_Sitemap' is clickable
    And 'FooterComponent_TermsandCondition' is clickable
    And 'FooterComponent_MonthltVisitors' is visible
    And 'FooterComponent_Lastupdated' is visible
    And 'FooterComponent_allrightreserved' is visible
    And 'FooterComponent_Followus' is visible

 Scenario: Validate Footer - UI (Font size,family and weight,Letter spacing,Line height)

    And The 'FooterComponent_Leftlogo' element has following CSS properties
      | width                | 131px                         |
      | height               | 198px                         |

    And The 'FooterComponent_Rightlogo' element has following CSS properties
      | width                | 427px                         |

   And The 'FooterComponent_AboutLink' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponent_AboutLinkItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

   And The 'FooterComponent_FindUs' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponent_FindusItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

   And The 'FooterComponent_Media' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponent_MediaItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

   And The 'FooterComponent_QuickLInks' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(180, 180, 180)           |

   And The 'FooterComponent_QuicklinksItem1' element has following CSS properties
    | font-size                 | 14px                         |
    | line-height               | 16px                         |
    | font-family               | Tajawal, "Tajawal Fallback"  |
    | font-weight               | 500                          |
    | letter-spacing            | normal                       |
    | Color                     | rgb(255, 255, 255)           |

 Scenario: Validate Footer - Functionality
  And 'alphanumerical' text is visible in 'FooterComponent_Lastupdated'
  And 'alphanumerical' text is visible in 'FooterComponent_allrightreserved'
  And 'alphanumerical' text is visible in 'FooterComponent_MonthltVisitors'