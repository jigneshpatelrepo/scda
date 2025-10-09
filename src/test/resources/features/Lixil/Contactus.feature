@test @Contactuspage @Contactus @test1
Feature: Contactus: Validate Contactus page (Two Cta box , Contact Info and Form)

 @clearcookies
 Scenario: Validate Security for Page opening
  Then I navigate to 'https://dev-sdd.ishj.ae/en/'
  And I wait for '3' seconds
  And I click on 'Advancebutton' if available
  And  I click on 'Advancebuttonproceed' if available
  And I wait for '3' seconds

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
  And I refresh the current page
  And I enter 'Test' into 'ContactUs_Form_Component_FirstName' field
  And I enter 'Test' into 'ContactUs_Form_Component_LastName' field
  And I enter 'Test' into 'ContactUs_Form_Component_Email' field
  And I enter '12345' into 'ContactUs_Form_Component_Phone' field
  And I click on 'ContactUs_Form_Component_Submit'
  And I press 'tab' key on 'ContactUs_Form_Component_Phone'
  And I enter 'Test test' into 'ContactUs_Form_Component_Message' field
  And I press 'tab' key on 'ContactUs_Form_Component_Message'
  And 'ContactUs_Form_Component_email_Regex' is visible for delete
  And 'ContactUs_Form_Component_Phone_Regex' is visible for delete
#  And 'ContactUs_Form_Component_Message_ValidionMsg' is visible for delete

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