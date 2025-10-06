@test @ourregulations @smoke
Feature: Our_Regulations: Validate SCDA Regulation and Standard Page

  @clearcookies
Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '1' seconds
   And I click on 'Advancebutton' if available
   And I click on 'Advancebuttonproceed' if available
   And I wait for '1' seconds

 Scenario: Validate Our regulation and Standard page component - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/qa/automation/about/our-regulations-and-standards'
  And 'DropDownFilterWithCards_Component' is visible
  And 'DropDownFilterWithCards_Component_DD' is visible
  And 'DropDownFilterWithCards_Component_Allcards' is visible

 Scenario: Validate Our regulation and Standard page  - card - UI (Font size,family and weight,Letter spacing,Line height)
   And The 'DropDownFilterWithCards_Component_Heading' element has following CSS properties
   | font-size                 | 22px                         |
   | line-height               | 36px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | normal                       |

  And The 'DropDownFilterWithCards_Component_Desc' element has following CSS properties
   | font-size                 | 14px                         |
   | line-height               | 24px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |

  And The 'DropDownFilterWithCards_Component_Btn_Span' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 14px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

  And The 'DropDownFilterWithCards_Component_FormatandSize' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate Our regulation and Standard page  - Filter Functionality - Single filter
  And Total count of 'DropDownFilterWithCards_Component_Allcards' is 9
  Then The 'aria-selected' attribute of 'DropDownFilterWithCards_Component_DD_item1_Cb' element contains 'true'
  Then I click on 'DropDownFilterWithCards_Component_DD'
  Then I click on 'DropDownFilterWithCards_Component_DD_item2'
  And I wait for '2' seconds
  And Total count of 'DropDownFilterWithCards_Component_Allcards' is 3
  And I click on 'DropDownFilterWithCards_Component_Loadmore' if available

 Scenario: Validate Our regulation and Standard page  - Filter Functionality - Multiple filter
  Then I click on 'DropDownFilterWithCards_Component_DD'
  Then I click on 'DropDownFilterWithCards_Component_DD_item3'
  And I wait for '2' seconds
  And Total count of 'DropDownFilterWithCards_Component_Allcards' is 5
  And '1 more tags' text is visible in test 'DropDownFilterWithCards_Component_plusonetext'
  And I click on 'DropDownFilterWithCards_Component_Loadmore' if available

 Scenario: Validate Our regulation and Standard page  - Hover Functionality on Card
  Then I hover mouse over 'DropDownFilterWithCards_Component_Allcards_Hover'
  And I wait for '2' seconds
  Then The 'class' attribute of 'DropDownFilterWithCards_Component_Allcards_Hover2' element contains 'underline'

 Scenario: Validate Our regulation and Standard page  - Card field Visibility
  And 'DropDownFilterWithCards_Component_Allcards' is visible
  And 'DropDownFilterWithCards_Component_Heading' is visible
  And 'DropDownFilterWithCards_Component_Desc' is visible
  And 'DropDownFilterWithCards_Component_Btn' is visible
  And 'DropDownFilterWithCards_Component_FormatandSize' is visible
  
 Scenario: Validate Our regulation and Standard page  - card - Download Functionality
  And 'DropDownFilterWithCards_Component_BtnDownload' is visible
  Then I click on 'DropDownFilterWithCards_Component_Btn'
  And I wait for '5' seconds
  And I press 'esc' key on page
  And I click on 'Advancebutton' if available
  And I click on 'Advancebuttonproceed' if available
  And I wait for '1' seconds