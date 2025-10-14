@AboutUs
Feature: About us: Validating the About us page

  Scenario: Clicking on Page link through error msg
    Then I navigate to 'https://dev-sdd.ishj.ae/en/QA/Automation/AboutUs'
    And I wait for page load
#    And I click on 'Advance'
#    And I click on 'Pagelink'
#    And I wait for '3' seconds


  Scenario: Validate Inner Banner With Image - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And 'InnerBanner_Visible' component exists on the page
    And 'InnerBanner_Visible' is visible
    And 'InnerBanner_Title' is visible
    And The 'InnerBanner_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'InnerBanner_CTA' is visible
    And I hover mouse over 'InnerBanner_CTA'
    And I wait for '2' seconds
    Then The 'InnerBanner_CTA' element has a CSS 'background-color' property with value 'rgb(230, 243, 236)'
    And The 'InnerBanner_CTA_Text' element has following CSS properties
      | font-size   | 16px                        |
      | line-height | 16px                        |
      | font-family | Inter, "Inter Fallback"     |
      | font-weight | 500                         |
      | letter-spacing | 0.2px                    |

  Scenario: Validate Text with images - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And 'TextWithImage_Visible' component exists on the page
    And 'TextWithImage_Visible' is visible
    And The 'TextWithImage_Visible' element has following CSS properties
      | padding-top    | 100px |
      | padding-bottom | 100px |

    And 'TextWithImage_Title' is visible
    And The 'TextWithImage_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'TextWithImage_Description' is visible
    And The 'TextWithImage_Description' element has following CSS properties
      | font-size   | 16px                        |
      | line-height | 28px                        |
      | font-family | Inter, "Inter Fallback"     |
      | letter-spacing | 0.2px                     |

   #make another scenario for this
    Given 'TextWithImage_Total_Images' is visible
    And Total count of 'TextWithImage_Total_Images' is 6
    And 'TextWithImageTitle_Image1' is visible
    And The 'TextWithImageTitle_Image1' element has following CSS properties
      | height | 320px |
      | width  | 518px |
    And The 'TextWithImage_Images_Gap' element has following CSS properties
      | column-gap | 20px |


  Scenario: Validate Promo text with rows - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And 'PromoText_visible' component exists on the page
    And 'PromoText_visible' is visible
    And The 'PromoText_visible' element has following CSS properties
      | padding-top    | 100px |
      | padding-bottom | 100px |
      | padding-left   | 16px  |
      | padding-right  | 16px  |

    And Total count of 'PromoText_Total_Rows' is 2
    And The 'PromoText_Total_Row1' element has following CSS properties
      | padding-top    | 40px  |
      | padding-bottom | 40px  |
      | padding-left   | 558px |

    And 'PromoText_Title' is visible
    And The 'PromoText_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And I scroll to 'PromoText_Total_Row1'
    And 'PromoText_Row1_Title' is visible
    And The 'PromoText_Row1_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |
    And I scroll to 'PromoText_Total_Row2'
    And 'PromoText_Row2_Title' is visible
    And The 'PromoText_Row2_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |
 And I scroll to 'Footer'
#    And I wait for '2' seconds
    And 'PromoText_Row1_Description' is visible
    And The 'PromoText_Row1_Description' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And I wait for '1' seconds
    And 'PromoText_Row2_Description' is visible
    And The 'PromoText_Row2_Description' element has following CSS properties
      | font-size      | 22px                        |
      | line-height    | 36px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |


  Scenario: Validate Text with single image - Visibility and UI (Font size,family and weight,Letter spacing,Line height)
    And 'TextWithSingleImage_Visible' component exists on the page
    And 'TextWithSingleImage_Visible' is visible
    And The 'TextWithSingleImage_Padding' element has following CSS properties
      | padding-top    | 60px |
      | padding-bottom | 60px |
      | padding-left   | 16px |
      | padding-right  | 16px |

    And 'TextWithSingleImage_Title' is visible
    And The 'TextWithSingleImage_Title' element has following CSS properties
      | font-size      | 40px                        |
      | line-height    | 48px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight    | 400                         |

    And 'TextWithSingleImage_Description' is visible
    And The 'TextWithSingleImage_Description' element has following CSS properties
      | font-size   | 16px                        |
      | line-height | 28px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | letter-spacing | 0.2px                     |


    And 'TextWithSingleImage_Name' is visible
    And The 'TextWithSingleImage_Name' element has following CSS properties
      | font-size   | 16px                        |
      | line-height | 28px                        |
      | font-family    | Inter, "Inter Fallback"     |
      | font-weight | 700                         |
      | letter-spacing | 0.2px                     |

    And 'TextWithSingleImage_Image' is visible
    And The 'TextWithSingleImage_Image' element has following CSS properties
      | height | 500px |
      | width  | 447px |

    And I click on 'InnerBanner_CTA'
    And I wait for '1' seconds
    And Current URL contains 'certifications'

