 @test@EventsListing
Feature: Events: Validating the Events listing

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/Events'
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
    And 'Events_Filter_Visible' is visible

  Scenario: Validate the events listing section
    And 'Events_Visible' is visible
    And I click on 'Events_LoadMore_Button' if available
    And I wait for '3' seconds
    And Total count of 'Events_Total_Cards' is 11
    And 'Events_Card1_Visible' is visible
    And 'Events_Card1_Title' is visible
    And The 'Events_Card1_Title' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'Events_Card1_CTA' is visible
    And The 'Events_Card1_CTAText' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 14px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Events_Card1_Date' is visible
    And The 'Events_Card1_Date' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | letter-spacing | normal                      |

    And 'Events_Card1_Image' is visible
    And 'Events_Card1_Label' is visible
    And The 'Events_Card1_LabelText' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Events_Card1_Time' is visible
    And The 'Events_Card1_Time' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Events_Card1_City' is visible
    And The 'Events_Card1_City' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |
   #And 'TODAY' Either of texts visible in 'Events_Card1_Label'


    And I hover mouse over 'Events_Card1_Hover'
    And I wait for '2' seconds
    And The 'Events_Card1_HoverEffect' element has a CSS 'scale' property with value '1.05'

  Scenario: Validate the filters in event listing
    Given 'Events_Filter_Visible' is visible
    And I click on 'Filter_Dropdown'
    And I wait for '3' seconds
    And Total count of 'Filter_Total_Options' is 3
    And The 'aria-selected' attribute of 'Filter_Option1' element is 'true'
    And The 'Filter_Option1_HoverColor' element has a CSS 'background-color' property with value '#e6f3ec'


  Scenario: Validate the other two filters in event listing
#    And I click on 'Filter_Option2'
#    And I wait for '3' seconds
#    And '7 DAYS LEFT' text is visible in 'Events_UpcomingCard1_Label'
#    And Total count of 'Filter_UpcomingEvents_TotalCards' is 0
    And I click on 'Filter_Option3'
    And I wait for '2' seconds
    And Total count of 'Filter_PastEvents_TotalCards' is 9
    And 'PAST EVENT' text is visible in 'Filter_Option3_Label'
    And I click on 'Events_Card1_CTA'
    And Current URL contains 'sharjah'