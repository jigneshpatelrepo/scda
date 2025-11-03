@test @Servicecenter
Feature: Servicecenter: Validate Servicestation page - Iframe

  @clearcookies
   Scenario: Validate Security for Page opening
   Then I navigate to 'https://dev-sdd.ishj.ae/en/'
   And I wait for '1' seconds
   And I click on 'Advancebutton' if available
   And  I click on 'Advancebuttonproceed' if available
   And I wait for '1' seconds

 Scenario: Validate Award Details page component  - Visibility

  Then I navigate to 'https://dev-sdd.ishj.ae/en/find-us/service-centers'
  And I wait for '20' seconds
#  And 'ServiceCenter_Component' is visible
  And 'ServiceCenter_Component' is visible





