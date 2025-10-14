@ServiceListing
Feature: Service listing: Validating the service listing

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/services'
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

    And 'ImageBanner_CTA' is visible
    And I hover mouse over 'ImageBanner_CTA'
    And I wait for '2' seconds
    Then The 'ImageBanner_CTA' element has a CSS 'background-color' property with value 'rgb(230, 243, 236)'
    And The 'ImageBanner_CTAText' element has following CSS properties
      | font-size   | 16px                        |
      | line-height | 16px                        |
      | font-family | Inter, "Inter Fallback"     |
      | font-weight | 500                         |
      | letter-spacing | 0.2px                    |

  Scenario: Validate the Service listing section
    And 'Service_Visible' is visible
    And I wait for '3' seconds
    And Total count of 'Service_Total_Cards' is 8
    And 'Service_Card1_Visible' is visible
    And 'Service_Card1_Title' is visible
    And The 'Events_Card1_Title' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'Service_Card1_CTA' is visible
    And The 'News_Card1_CTA' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 14px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Service_Card1_Description' is visible
    And The 'Events_Card1_Date' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | letter-spacing | normal                      |

    And 'Service_Card1_TagsCount' is visible
    And Total count of 'Service_Card1_TagsCount' is 3
    And I hover mouse over 'Service_Card2_Hover'
    And I wait for '2' seconds
    And The 'Service_Card2_Hover' element has a CSS 'background-color' property with value '#e6f3ec'
    And I click on 'Service_Card1_CTA'
    And I wait for '2' seconds

    #Service sub-categories page
#    Scenario: Validate the Inner banner without image
#      And

