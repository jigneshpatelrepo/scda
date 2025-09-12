@test @Awards @AwardsandCertification
Feature: awardsandcertifications: Validate AwardsCertification Page Component

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
    And 'AwardsCertiComponentitem' is visible
    And 'AwardsCertiComponentitemImg' is visible
    And 'AwardsCertiComponentitemdate' is visible
    And 'AwardsCertiComponentitemMinistry' is visible
    And 'AwardsCertiComponentitemlinkAnchor' is clickable
    And 'AwardsCertiComponentitemlinkSpan' is visible
    And 'AwardsCertiComponentitemTitle' is visible

  Scenario: Validate Awards and certifications UI (Font size,family and weight,Letter spacing,Line height)

    And The 'AwardsCertiComponentitemTitle' element has following CSS properties
      | font-size                 | 24px                         |
      | line-height               | 32px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 400                          |
      | letter-spacing            | -0.48px                      |
      | Color                     | rgb(0, 0, 0)                 |

    And The 'AwardsCertiComponentitemdate' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 16px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | font-weight               | 500                          |
      | letter-spacing            | normal                       |

    And The 'AwardsCertiComponentitemMinistry' element has following CSS properties
      | font-size                 | 16px                         |
      | line-height               | 24px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | letter-spacing            | normal                       |

    And The 'AwardsCertiComponentitemlinkSpan' element has following CSS properties
      | font-size                 | 14px                         |
      | line-height               | 14px                         |
      | font-family               | Tajawal, "Tajawal Fallback"  |
      | letter-spacing            | normal                       |
      | font-weight               | 500                          |

  Scenario: Validate Awards and certifications Hover
    And I hover mouse over 'AwardsCertiComponentitem'
    And I wait for '1' seconds
    And The 'AwardsCertiComponentitemImg' element has following CSS properties
      | scale                      | 1.05                        |

  Scenario: Validate Awards and certifications - Functionality - Loadmore

    And Total count of 'AwardsCertiComponentitemlinkAnchor' is 9
    And I click on 'AwardsCertiComponentLoadmore'
    And I wait for '1' seconds
    And Total count of 'AwardsCertiComponentitemlinkAnchor' is 15

  Scenario: Validate Awards and certifications - Functionality - Navigation
    
    And I click on 'AwardsCertiComponentitemlinkAnchor'
    And I wait for '1' seconds
    And Current URL contains Either of 'our-awards-and-certifications' or 'detail'