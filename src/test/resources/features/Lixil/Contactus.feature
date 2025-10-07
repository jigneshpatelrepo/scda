@test @Contactuspage @Contactus
Feature: Contactus: Validate Contactus page (Two Cta box , Contact Info and Form)

  @clearcookies
  Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

 Scenario: Validate TwoctaBox Component - Visibility Left side
    Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/contact-us'
    And 'TwoCtaBox_component' component exists on the page
    And I scroll to 'TwoCtaBox_component'
    And 'TwoCtaBox_component_Card1Title' is visible
    And 'TwoCtaBox_component_Card1Desc' is visible
    And 'TwoCtaBox_component_Card1Cta' is clickable
    And 'TwoCtaBox_component_Card1CtaSpan' is visible

 Scenario: Validate TwoctaBox Component - Visibility Right side
  And 'TwoCtaBox_component' component exists on the page
  And I scroll to 'TwoCtaBox_component'
  And 'TwoCtaBox_component_Card2Title' is visible
  And 'TwoCtaBox_component_Card2Desc' is visible
  And 'TwoCtaBox_component_Card2Cta' is clickable
  And 'TwoCtaBox_component_Card2CtaSpan' is visible

 Scenario: Validate TwoCTa Box - UI (Font size,family and weight,Letter spacing,Line height)

   And The 'TwoCtaBox_component_Card1Title' element has following CSS properties
    | font-size                 | 40px                         |
    | line-height               | 48px                         |
    | font-family               | Inter, "Inter Fallback"      |
    | font-weight               | 400                          |
    | letter-spacing            | normal                       |

   And The 'TwoCtaBox_component_Card1Desc' element has following CSS properties
    | font-size                 | 16px                         |
    | line-height               | 28px                         |
    | font-family               | Inter, "Inter Fallback"      |
    | font-weight               | 400                          |
    | letter-spacing            | 0.2px                        |

  And The 'TwoCtaBox_component_Card1CtaSpan' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 14px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate  TwoCTa Box - Functionality
  And I click on 'TwoCtaBox_component_Card2Cta' if available
  And Current URL contains 'news'

  ##Contactus form
 Scenario: Validate Contact us Form Component - Visibility
  And I navigate to 'https://dev-sdd.ishj.ae/en/find-us/contact-us'
  And I wait for '2' seconds
  And 'ContactUs_Form_Component' component exists on the page
  And I scroll to 'ContactUs_Form_Component'
  And 'ContactUs_Form_Component_heading' is visible
  And 'ContactUs_Form_Component_Subject' is visible
  And 'ContactUs_Form_Component_Img' is visible
  And 'ContactUs_Form_Component_Message' is visible

 Scenario: Validate Contact us Form Component - Validation message Visibility
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  And 'ContactUs_Form_Component_Firstname_ValidionMsg' is visible
  And 'ContactUs_Form_Component_Subject' is visible
  And 'ContactUs_Form_Component_Lastname_ValidionMsg' is visible
  And 'ContactUs_Form_Component_email_ValidionMsg' is visible
  And 'ContactUs_Form_Component_phone_ValidionMsg' is visible

  And The 'ContactUs_Form_Component_Firstname_ValidionMsg' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |
   |color                      | rgb(219, 59, 33)             |


 Scenario: Validate Contact us Form Component - Specific Validation message Visibility
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  And I enter 'Test' into 'ContactUs_Form_Component_FirstName' field
  And I enter 'Test' into 'ContactUs_Form_Component_LastName' field
  And I enter 'Test' into 'ContactUs_Form_Component_Email' field
  And I enter '12345' into 'ContactUs_Form_Component_Phone' field
  And 'ContactUs_Form_Component_email_Regex' is visible
  And 'ContactUs_Form_Component_Phone_Regex' is visible
  And 'ContactUs_Form_Component_Message_ValidionMsg' is visible

 Scenario: Validate Contact us Form Component - Submit form
  Then I refresh the current page
  Then I wait for '1' seconds
  And I scroll to 'ContactUs_Form_Component'
  Then I click on 'ContactUs_Form_Component_Subject'
  Then I wait for '1' seconds
  And I click on 'ContactUs_Form_Component_Subject_DDitem1_Btn_span'
  And I enter 'Test' into 'ContactUs_Form_Component_FirstName' field
  And I enter 'Test' into 'ContactUs_Form_Component_LastName' field
  And I enter 'Test@test.com' into 'ContactUs_Form_Component_Email' field
  And I enter '12345122' into 'ContactUs_Form_Component_Phone' field
  And I enter 'Test test loremp insum testiung for more than 20 chars' into 'ContactUs_Form_Component_Message' field
  And I enter '12345122' into 'ContactUs_Form_Component_Phone' field
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  Then 'ContactUs_Form_Component_ThankYou' is visible

  ## contact info component

 Scenario: Validate ContactInfo component  - Visibility
  And 'ContactInfo_component' component exists on the page
  And I scroll to 'ContactInfo_component'
  And 'ContactInfo_component_Working_Hours' is visible
  And 'ContactInfo_component_Working_Hours_time' is visible
  And 'ContactInfo_component_logo' is visible

  And 'ContactInfo_component_Address' is visible
  And 'ContactInfo_component_Addresslink' is visible
  And 'ContactInfo_component_Address_logo' is visible

  And 'ContactInfo_component_Phone' is visible
  And 'ContactInfo_component_PhoneNo' is visible
  And 'ContactInfo_component_Phone_logo' is visible

  And 'ContactInfo_component_Email' is visible
  And 'ContactInfo_component_Email_Address' is visible
  And 'ContactInfo_component_EmailAddress_logo' is visible

 Scenario: Validate ContactInfo Component - UI - Hours Card

  And The 'ContactInfo_component_Working_Hours' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |

  And The 'ContactInfo_component_Working_Hours_time' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate ContactInfo Component - UI - Address Card

  And The 'ContactInfo_component_Address' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |

  And The 'ContactInfo_component_Addresslink' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate ContactInfo Component - UI - PhoneNo Card

  And The 'ContactInfo_component_Phone' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |

  And The 'ContactInfo_component_PhoneNo' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate ContactInfo Component - UI - Address Card

  And The 'ContactInfo_component_Email' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
   | letter-spacing            | 0.2px                        |

  And The 'ContactInfo_component_Email_Address' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

 Scenario: Validate ContactInfo Component - Functionality
  Then I click on 'ContactInfo_component_Addresslink'
  Then I switch browser
  And Current URL contains 'maps'
  And I switch browser
  Then I click on 'ContactInfo_component_PhoneNo'
  Then I wait for '5' seconds
  And I press 'esc' key on page
  And The 'href' attribute of 'ContactInfo_component_PhoneNo' element contains 'tel'
  Then I click on 'ContactInfo_component_Email_Address'
  Then I wait for '2' seconds
  And I press 'esc' key on page
  And The 'href' attribute of 'ContactInfo_component_Email_Address' element contains 'mailto'