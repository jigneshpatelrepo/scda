@test@Awareness
Feature: Awareness: Validating the Awareness listing

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/awareness'
    And I wait for page load
#    And I click on 'Advance' if available
#    And I click on 'Pagelink' if available
#    And I wait for '2' seconds

  Scenario: Validate Image banner's Visibility
    And 'ImageBanner_Visible' component exists on the page
    And 'ImageBanner_Visible' is visible
    And 'Breadcrumb_Visible' is visible
    And 'ImageBanner_Title' is visible
    And The 'ImageBanner_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

  Scenario: Validate the events listing section
    And 'Awareness_Visible' is visible
    And I wait for '3' seconds
    And Total count of 'Awareness_Total_Cards' is 4
    And 'Awareness_Card2_Visible' is visible
    And 'Awareness_Card2_Title' is visible
    And The 'Awareness_Card2_Title' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'Awareness_Card2_CTAText' is visible
    And The 'Awareness_Card2_CTAText' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 14px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Awareness_Card2_Date' is visible
    And The 'Awareness_Card2_Date' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Awareness_Card2_Image' is visible
    And I hover mouse over 'Awareness_Card2_Hover'
    And I wait for '2' seconds
    And The 'Awareness_Card2_HoverEffect' element has a CSS 'scale' property with value '1.05'
    And I click on 'Awareness_Card2_CTA'
    And I wait for '2' seconds
    And Current URL contains 'awarness-detail-1'