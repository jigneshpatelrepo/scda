@test @Awards @AwardsandCertification
Feature: Awards_and_Certifications: Validate Awards and Certification Page

  @clearcookies
  Scenario: Validate Security for Page opening
    Then I navigate to 'https://dev-sdd.ishj.ae/en/'
    And I wait for '3' seconds
    And I click on 'Advancebutton' if available
    And  I click on 'Advancebuttonproceed' if available
    And I wait for '3' seconds

  Scenario: Validate Awards and certifications Field Visibility
    Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/about/our-awards-and-certifications'
    And 'AwardsCertiComponent' component exists on the page
    And I scroll to 'AwardsCertiComponent'
    And 'AwardsCertiComponent_item' is visible
    And 'AwardsCertiComponent_itemImg' is visible
    And 'AwardsCertiComponent_itemdate' is visible
    And 'AwardsCertiComponent_itemMinistry' is visible
    And 'AwardsCertiComponent_itemlinkAnchor' is clickable
    And 'AwardsCertiComponent_itemlinkSpan' is visible
    And 'AwardsCertiComponent_itemTitle' is visible

  Scenario: Validate Awards and certifications UI (Font size,family and weight,Letter spacing,Line height)

    And The 'AwardsCertiComponent_itemTitle' element has following CSS properties
      | font-size                 | 22px                         |
      | line-height               | 36px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 400                          |
      | letter-spacing            | normal                       |
      | Color                     | rgb(0, 0, 0)                 |

    And The 'AwardsCertiComponent_itemdate' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 16px                         |
      | font-family               | Inter, "Inter Fallback"      |
      | font-weight               | 500                          |
      | letter-spacing            | 0.2px                        |

    And The 'AwardsCertiComponent_itemMinistry' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 24px                         |
      | font-family               |  Inter, "Inter Fallback"     |
      | letter-spacing            | 0.2px                        |

    And The 'AwardsCertiComponent_itemlinkSpan' element has following CSS properties
      | font-size                 | 12px                         |
      | line-height               | 14px                         |
      | font-family               |  Inter, "Inter Fallback"     |
      | letter-spacing            | 0.2px                        |
      | font-weight               | 500                          |

  Scenario: Validate Awards and certifications Hover
    And I hover mouse over 'AwardsCertiComponent_item'
    And I wait for '1' seconds
    And The 'AwardsCertiComponent_itemImg' element has following CSS properties
      | scale                      | 1.05                        |

  Scenario: Validate Awards and certifications - Functionality - Loadmore
    And Total count of 'AwardsCertiComponent_itemlinkAnchor' is 9
    And I click on 'AwardsCertiComponent_Loadmore'
    And I wait for '1' seconds
    And Total count of 'AwardsCertiComponent_itemlinkAnchor' is 15

  Scenario: Validate Awards and certifications - Functionality - Navigation
    And I click on 'AwardsCertiComponent_itemlinkAnchor'
    And I wait for '1' seconds
    And Current URL contains Either of 'our-awards-and-certifications' or 'detail'