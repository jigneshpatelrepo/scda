@test@Gallery
Feature: Gallery: Validating the Events listing

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/Gallery'
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
    And 'Gallery_Filter_Visible' is visible

  Scenario: Validate the gallery listing section
    And 'Gallery_Visible' is visible
    And I click on 'Gallery_LoadMore_Button' if available
    And I wait for '3' seconds
    And Total count of 'Gallery_Total_Cards' is 13
    And 'Gallery_Card1_Visible' is visible

    And 'Gallery_Card1_Title' is visible
    And The 'Gallery_Card1_Title' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'Gallery_Card1_CTAText' is visible
    And The 'Gallery_Card1_CTAText' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 14px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Gallery_Card1_Date' is visible
    And The 'Gallery_Card1_Date' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And 'Gallery_Card1_Image' is visible
    And 'Gallery_Card1_Label' is visible
    And The 'Gallery_Card1_Label' element has following CSS properties
      | font-size      | 12px                        |
      | line-height    | 16px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 500                         |
      | letter-spacing | 0.2px                       |

    And I hover mouse over 'Gallery_Card1_Hover'
    And I wait for '2' seconds
    And The 'Gallery_Card1_HoverEffect' element has a CSS 'scale' property with value '1.05'

  Scenario: Validate the filters in Gallery listing
    Given 'Gallery_Filter_Visible' is visible
    And I wait for '2' seconds
    And I click on 'Filter_dropdown'
    And I wait for '2' seconds
    And Total count of 'Filter_Total_Options' is 2
    And The 'aria-selected' attribute of 'Filter_Option1' element is 'true'
    And The 'Filter_Option1_HoverColor' element has a CSS 'background-color' property with value '#e6f3ec'

  Scenario: Validate the other filter in Gallery listing
    And I click on 'Filter_Option2'
    And I wait for '3' seconds
    And I click on 'Gallery_LoadMore_Button' if available
    And I wait for '3' seconds
    And Total count of 'Gallery_Total_Cards' is 13
    And '7 ITEMS' text is visible in 'Filter_Option2_Label'
    And I click on 'Gallery_Card1_CTA'
    And I wait for '2' seconds
    And Current URL contains 'album-detail-1'

    Scenario: Validate the Detail Page
      And 'InnerBanner_Visible' component exists on the page
      And 'InnerBanner_Breadcrumb_Visible' is visible
      And 'InnerBanner_Title' is visible
      And 'InnerBanner_Label' is visible
      And 'InnerBanner_BlackStrip_Text' is visible
      And Total count of 'InnerBanner_Breadcrumb_ParentItemCount' is 2
      And '7' text is visible in 'InnerBanner_7Items_CrossCheck'
      And Total count of 'Media_Count' is 7

      Scenario: Validating the pop up
        And I click on 'First_Image_Click'
        And 'PopUp_Image_Visible' is visible
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And 'PopUp_Image2_Visible' is visible
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And I wait for '2' seconds
        And I click on 'PopUp_NextArrow_Click'
        And I wait for '2' seconds
        And 'PopUp_Image_Visible' is visible
        And I click on 'Cross_Button'
        
