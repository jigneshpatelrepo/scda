@test@ServiceDetail
Feature: Service listing: Validating the service detail page

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/services/construction-plan-approvals/copy-of-addition-of-floors'
    And I wait for page load
#    And I click on 'Advance' if available
#    And I click on 'Pagelink' if available
#    And I wait for '2' seconds


Scenario: Validate the inner banner without image component
And 'DetailPage_InnerBanner_Visible' component exists on the page
And 'DetailPage_InnerBanner_Breadcrumb_Visible' is visible
And 'DetailPage_InnerBanner_Title' is visible
And The 'DetailPage_InnerBanner_Title' element has following CSS properties
| font-size      | 36px                        |
| line-height    | 48px                        |
| font-family    | Inter, "Inter Fallback"     |
| font-weight    | 400                         |
| letter-spacing | 0.2px                      |

And Total count of 'DetailPage_InnerBanner_Breadcrumb_ParentItemCount' is 3
And Total count of 'DetailPage_InnerBanner_BlackStrip_TextCount' is 3
And The 'DetailPage_InnerBanner_BlackStrip_FirstText' element has following CSS properties
| font-size      | 18px                        |
| line-height    | 24px                        |
| font-family    | Inter, "Inter Fallback"     |

And 'DetailPage_RTE_Visible' is visible
And 'DetailPage_FAQs_Visible' is visible
And 'DetailPage_RelatedPageCarousel_Visible' is visible