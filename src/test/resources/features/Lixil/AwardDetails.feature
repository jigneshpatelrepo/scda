@test @AwardDetails @smoke
Feature: AwardDetails: Validate SCDA Award details page

  @clearcookies
   Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '1' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '1' seconds

 Scenario: Validate Award Details page component  - Visibility
  #page has breadcrumb,innerbanner and imagebanner component
  Then I navigate to 'https://dev-sdd.ishj.ae/en/about/our-awards-and-certifications/award-detail-1'
    And 'Breadcrumb_Component' is visible
    And 'InnerBannerWithoutImage_Component' is visible
    And 'ImageBanner_Component' is visible
    And 'RichText_Component' is visible

 Scenario: Validate Award Details page for Breadcrumb component - UI (Font size,family and weight,Letter spacing,Line height)
  And Total count of 'Breadcrumb_Total_items' is 3

  And The 'Breadcrumb_Parent_Item1' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 16px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

  And The 'Breadcrumb_Parent_Item2' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 16px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |

  And The 'Breadcrumb_Parent_Item3' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 16px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 500                          |
   | letter-spacing            | normal                       |


 Scenario:  Validate Award Details page for InnerBannerWithoutImage Component  - Field visible
  And 'InnerBannerWithoutImage_Component_Heading' is visible
  And 'InnerBannerWithoutImage_Component_Dateicon' is visible
  And 'InnerBannerWithoutImage_Component_Date' is visible
  And 'InnerBannerWithoutImage_Component_Tick_icon' is visible
  And 'InnerBannerWithoutImage_Component_Awarded_by' is visible
  And 'InnerBannerWithoutImage_Component_AwardName' is visible

 Scenario:  Validate Award Details page for InnerBannerWithoutImage Component  - UI (Font size,family and weight,Letter spacing,Line height)

  And The 'InnerBannerWithoutImage_Component_Heading' element has following CSS properties
   | font-size                 | 40px                         |
   | line-height               | 48px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |

  And The 'InnerBannerWithoutImage_Component_Date' element has following CSS properties
   | font-size                 | 20px                         |
   | line-height               | 24px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                       |

  And The 'InnerBannerWithoutImage_Component_Awarded_by' element has following CSS properties
   | font-size                 | 20px                         |
   | line-height               | 24px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                       |

  And The 'InnerBannerWithoutImage_Component_AwardName' element has following CSS properties
   | font-size                 | 20px                         |
   | line-height               | 24px                         |
   | font-family               | Tajawal, "Tajawal Fallback"  |
   | font-weight               | 400                          |
   | letter-spacing            | -0.48px                      |


 Scenario: Validate Image banner carousel functionality ( Enable and Disable )
  Then 'ImageBanner_Component_card_PreviousBtn' is disabled
  And I click on 'ImageBanner_Component_card_NextBtn'
  And I wait for '1' seconds
  And The 'class' attribute of 'ImageBanner_Component_card_Navigation' element contains 'is-prev'
  And I click on 'ImageBanner_Component_card_PreviousBtn'
  And I wait for '1' seconds
  And The 'class' attribute of 'ImageBanner_Component_card_Navigation' element contains 'active is-visible'



