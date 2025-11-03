@test @Contactuspage @Contactusinfo @test1
Feature: Contactus: Validate Contactinfo component on Contactus page

  @clearcookies
  Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '3' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '3' seconds

  ## contact info component
 Scenario: Validate ContactInfo component  - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/contact-us'
  And I wait for '2' seconds
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
  And I click to browser back button
  And I refresh the current page

 Scenario: Validate ContactInfo Component - UI - Hours Card
  Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/contact-us'
  And I wait for '2' seconds
  And I scroll to 'ContactInfo_component'

  And The 'ContactInfo_component_Working_Hours_time' element has following CSS properties
   | font-size                 | 12px                         |
   | line-height               | 16px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 500                          |
   | letter-spacing            | 0.2px                        |

  And The 'ContactInfo_component_Working_Hours' element has following CSS properties
   | font-size                 | 16px                         |
   | line-height               | 28px                         |
   | font-family               | Inter, "Inter Fallback"      |
   | font-weight               | 400                          |
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
  And I close current browser and switch
  Then I click on 'ContactInfo_component_PhoneNo'
  Then I wait for '5' seconds
  And I press 'esc' key on page
  And The 'href' attribute of 'ContactInfo_component_PhoneNo' element contains 'tel'
  Then I click on 'ContactInfo_component_Email_Address'
  Then I wait for '2' seconds
  And I press 'esc' key on page
  And The 'href' attribute of 'ContactInfo_component_Email_Address' element contains 'mailto'
  And I refresh the current page
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
  And I click to browser back button
  And I refresh the current page