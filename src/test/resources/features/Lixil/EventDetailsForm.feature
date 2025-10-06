@test

Feature: EventDetailsForm: Validate Event Details - Form
  @clearcookies
   Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '1' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '1' seconds

 Scenario: Validate Event Details - Form Component - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/media/events/madani-sharjah'
  And 'ContactUs_Form_Component' component exists on the page
  And I scroll to 'ContactUs_Form_Component'
  And 'ContactUs_Form_Component_heading' is visible
  And 'ContactUs_Form_Component_Img' is visible
  And 'ContactUs_Form_Component_FirstName' is visible
  And 'ContactUs_Form_Component_LastName' is visible
  And 'ContactUs_Form_Component_Email' is visible
  And 'ContactUs_Form_Component_Phone' is visible
  And 'ContactUs_Form_Component_NoofAtten' is visible

 Scenario: Validate Event Details - Form Component - Validation message Visibility
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  And 'ContactUs_Form_Component_Firstname_ValidionMsg' is visible
  And 'ContactUs_Form_Component_Lastname_ValidionMsg' is visible
  And 'ContactUs_Form_Component_email_ValidionMsg' is visible
  And 'ContactUs_Form_Component_Attend_ValidionMsg' is visible

 Scenario: Validate Event Details - Form Component - Specific Validation message Visibility
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  And I enter 'Test' into 'ContactUs_Form_Component_FirstName' field
  And I enter 'Test' into 'ContactUs_Form_Component_LastName' field
  And I enter 'Test' into 'ContactUs_Form_Component_Email' field
  And I enter '12345' into 'ContactUs_Form_Component_Phone' field
  And 'ContactUs_Form_Component_email_Regex' is visible

 Scenario: Validate Event Details - Form Component - Submit form
  Then I refresh the current page
  Then I wait for '1' seconds
  And I scroll to 'ContactUs_Form_Component'
  Then I click on 'ContactUs_Form_Component_NoofAtten'
  Then I wait for '1' seconds
  And I click on 'ContactUs_Form_Component_NoofAtten_item1_Span'
  And I enter 'Test' into 'ContactUs_Form_Component_FirstName' field
  And I enter 'Test' into 'ContactUs_Form_Component_LastName' field
  And I enter 'Test@test.com' into 'ContactUs_Form_Component_Email' field
  And I enter '12345122' into 'ContactUs_Form_Component_Phone' field
  And I click on 'ContactUs_Form_Component_Submit'
  Then I wait for '1' seconds
  Then 'ContactUs_Form_Component_ThankYou' is visible

