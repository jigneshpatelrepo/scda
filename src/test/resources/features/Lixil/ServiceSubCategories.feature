@test@ServiceSubCategories
Feature: Service listing: Validating the service Sub categories page

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/services/construction-plan-approvals'
    And I wait for page load
#    And I click on 'Advance' if available
#    And I click on 'Pagelink' if available
#    And I wait for '2' seconds

    Scenario: Validate the Inner banner without image
    And 'InnerBanner_Visible' component exists on the page
    And 'InnerBanner_Breadcrumb_Visible' is visible
    And 'InnerBanner_Title' is visible
   # And 'InnerBanner_Icon' is visible
    And Total count of 'InnerBanner_Breadcrumb_ParentItemCount' is 2

    Scenario: Validate the tabs with filter component
    And 'TabsWithFilter_Visible' is visible
    And 'TabsWithFilter_Title' is visible
    And The 'TabsWithFilter_Title' element has following CSS properties
    | font-size      | 22px                        |
    | line-height    | 36px                        |
    | font-weight    | 400                         |
    | font-family    | Inter, "Inter Fallback"     |
    | letter-spacing | normal                      |

    And 'TabsWithFilter_Description' is visible
    And The 'TabsWithFilter_Description' element has following CSS properties
    | font-size      | 16px                        |
    | line-height    | 28px                        |
    | font-family    | Inter, "Inter Fallback"     |
    | letter-spacing | 0.2px                      |

    And I click on 'TabsWithFilter_LoadMore_Button'
    And I wait for '2' seconds
    And Total count of 'TabsWithFilter_TotalCards' is 11
    And 'All Services (11)' text is visible in 'TabsWithFilter_Title'

    Scenario: Validate the cards item
    And 'TabsWithFilter_Card1_Visible' is visible
    And 'TabsWithFilter_Card1_Title' is visible
    And The 'TabsWithFilter_Card1_Title' element has following CSS properties
    | font-size      | 22px                        |
    | line-height    | 36px                        |
    | font-weight    | 400                         |
    | font-family    | Inter, "Inter Fallback"     |
    | letter-spacing | normal                      |

    And 'TabsWithFilter_Card1_Description' is visible
    And The 'TabsWithFilter_Card1_Description' element has following CSS properties
    | font-size      | 14px                        |
    | line-height    | 24px                        |
    | font-family    | Inter, "Inter Fallback"     |
    | letter-spacing | 0.2px                      |

    And 'TabsWithFilter_Card1_CTA' is visible
    And The 'TabsWithFilter_Card1_CTA_Text' element has following CSS properties
    | font-size      | 12px                        |
    | line-height    | 14px                        |
    | font-family    | Inter, "Inter Fallback"     |
    | letter-spacing | 0.2px                       |
    | font-weight    | 500                         |

    Scenario: Validate the tabs with filter items
    And Total count of 'TabsWithFilter_Total_FilterTabs' is 7
    Then The 'TabsWithFilter_FirstFilter_Color' element has a CSS 'color' property with value 'rgb(23, 143, 82)'
    And I click on 'TabsWithFilter_SearchBox'
    And I enter 'add' into 'TabsWithFilter_SearchBox' field
    And I wait for '1' seconds
    And Total count of 'TabsWithFilter_Total_FilterTabs' is 3
    And Total count of 'TabsWithFilter_TotalCards' is 3
    And I click on 'TabsWithFilter_Card1AfterSearch_CTA'
    And I wait for '2' seconds
    And Current URL contains Either of 'services' or 'floors'