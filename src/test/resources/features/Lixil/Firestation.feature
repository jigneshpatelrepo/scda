@test @Firestation @test1
Feature: Servicecenter: Validate Fire Station page - Iframe

  @clearcookies
   Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '1' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '1' seconds

 Scenario: Validate Fire Stations page component  - Visibility
  Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/fire-stations'
  And I wait for '20' seconds
  And 'ServiceCenter_Component' is visible