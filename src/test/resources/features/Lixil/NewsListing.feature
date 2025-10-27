@test@NewsListing
Feature: News: Validating the News listing

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/News'
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
    And 'News_Filter_Visible' is visible

    Scenario: Validate the news listing section
      And 'News_Visible' is visible
      And Total count of 'News_Total_cards' is 7
      And 'News_Card1_Visible' is visible
      And 'News_Card1_Title' is visible
      And The 'News_Card1_Title' element has following CSS properties
        | font-size      | 22px                        |
        | line-height    | 36px                        |
        | font-family    | Inter, "Inter Fallback"     |
        | font-weight    | 400                         |

      And 'News_Card1_CTA' is visible
      And The 'News_Card1_CTA' element has following CSS properties
        | font-size      | 12px                        |
        | line-height    | 14px                        |
        | font-family    | Inter, "Inter Fallback"     |
        | font-weight    | 500                         |
        | letter-spacing | 0.2px                       |

      And 'News_Card1_Date' is visible
      And The 'News_Card1_Date' element has following CSS properties
        | font-size      | 12px                        |
        | line-height    | 16px                        |
        | font-family    | Inter, "Inter Fallback"     |
        | font-weight    | 500                         |
        | letter-spacing | 0.2px                       |

      And 'News_Card1_Image' is visible
      And I hover mouse over 'News_Card1_Hover'
      And I wait for '2' seconds
      And The 'News_Card1_HoverEffect' element has a CSS 'scale' property with value '1.05'

  Scenario: Validate the Month dropdown
    Given 'MonthDropdown_Click' is visible
    And I click on 'MonthDropdown_Click'
    And I wait for '1' seconds
    And 'MonthDropdownList_Visible' is visible
    And Total count of 'MonthDropdownList_TotalCount' is 13
  And The 'aria-selected' attribute of 'MonthDropdownList_FirstOption' element is 'true'
    And I click on 'MonthDropdown_Click'


  Scenario: Validate the Year dropdown
    Given 'YearDropdown_Click' is visible
    And I click on 'YearDropdown_Click'
    And I wait for '2' seconds
    And Total count of 'YearDropdownList_TotalCount' is 5
    And The 'aria-selected' attribute of 'YearDropdownList_FirstOption' element is 'true'

  Scenario: Validate the Month dropdown after applying filters
    And I click on 'MonthDropdown_Click'
    And I click on 'MonthFilter_SelectJuly'
    And I wait for '2' seconds
    And I click on 'MonthFilter_SelectAugust'
    And I wait for '2' seconds
    And I click on 'MonthFilter_SelectSeptember'
    And I wait for '3' seconds
    And The 'aria-label' attribute of 'MonthFilter_TextOnDropdown' element is 'List of 3 tags'
    And Total count of 'MonthFilter_List_OptionsSelected_TotalCount' is 3
    And I click on 'MonthDropdown_Click'
    And Total count of 'MonthFilter_Total_cards' is 5

  Scenario: Validate the Year dropdown after applying filters
    And I click on 'YearDropdown_Click'
    And I click on 'YearFilter_Select2024'
    And I wait for '2' seconds
    And I click on 'YearFilter_Select2023'
    And I wait for '2' seconds
    And I click on 'YearFilter_Select2022'
    And I wait for '3' seconds
    And The 'aria-label' attribute of 'YearFilter_TextOnDropdown' element is 'List of 4 tags'
    And Total count of 'YearFilter_List_OptionsSelected_TotalCount' is 4
    And I click on 'YearDropdown_Click'
    And Total count of 'YearFilter_Total_cards' is 6

Scenario: Validating the click effect of CTA
  And I click on 'News_FirstCard_CTA'
  And I wait for '2' seconds
 And Current URL contains 'news-detail-8'

