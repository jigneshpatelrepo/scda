# About Quick Automation Test Project

* This Quick Automation framework is created to automation any functionality quickly using predefined test cases.
* One need to create feature file and locator file only in order to create automation script.
* Custom test step definitions can be created under stepdefinitions folder
* Locator file name (without file extension) should be mentioned after scenario or feature keyword, and it should be
  followed by a colon (:).   
  e.g.

~~~bash
@test
Feature: ProductSelector: Validate Product Selector flow
  
  Scenario: login: Login into website
  Given ...
  When ...
  Then ...
~~~

* If locator name is not mentioned in the feature file then it will find element's locator from 'common.yml' locator
  file.

# How To execute Automation:

command to run the automation script:

~~~bash
mvn clean test -Denvironment=qa -Dbrowser=chrome -Dcucumber.filter.tags=@test
~~~ 

* environment can be specified to test different environments (e.g. test, qa, stage, production)
* browser can be specified to test different browser (e.g. edge,firefox,chrome,chromeHeadless,firefoxHeadless)
* tag name of the scenario/feature to be executed
* intelliJ project  
  _@author_ - pshah@horizontal.com

# **List of Predefined Test Cases:**

	1. I view the home page
	2. I navigate to 'URL/path'
        * absolute or partial URL 
	3. I am on 'URL/path' page
        * absolute or partial URL
	4. I set 'value' as the value in the 'element_name' field
	5. Current URL contains 'part_of_URL'
	6. 'Component_Name' component exists on the page
	7. The 'attribute_Name' attribute of 'element_Name' element (contains|is) 'expected_value'
        * Above method checks if the exact matching text present in the attribute or Above method checks if the expected partial text present in the attribute 
	8. The 'element_name' element has a CSS 'CSSproperty_name' property with value 'CSSvalue'
        * CSSvalue e.g. RGB(155, 155, 155), 15px  
        CSSattribute -> name of css attribute e.g. color, background-color
        Supporting both hex and RGB formats for color comparisons.
	9. The 'element_Name' element has following CSS properties
        | CSSProperty_name | CSS Value |
	10. Link on 'element_name' having response code 200 ok
        * validate links in href attribute in the element
	11. Links on 'element_name' having response code 200 ok
        * validate links in href attribute in the elements
	12. Below urls having response code 200 ok
        | absolute/partialURL |
	13. Total count of 'element_name' is n
        * to validate the number of the elements
	14. I wait and click on 'element_name'
	15. I click on 'element_name'
        * This method will click through Javascript without any wait time
	16. I click on 'element_name' if available
        * the step will be skipped if the element is not available
	17. I scroll to 'element_name'
	18. 'element_name' is visible
	19. I enter 'value' into 'element_name' field
	20. 'element_name' is clickable
	21. I hover mouse over 'element_name'
	22. 'element_name' is disappeared
	23. 'element_name' is selected
	24.  select 'option_name' option from 'element_name' dropdown field
	25. I upload 'filepath_with_name' file into 'element_name' field
        * the file should be saved in /src/test/resources/testData
	26. 'element_name' value is changed
	27.  I open new tab with url 'URL/path'
        * absolute or partial URL 
	28.  I close current browser and switch
	29.  I switch browser
	30. Below 'element_Name' are visible
        | text on element |
	31.  I switch to 'iframe_element'
	32.  I switch back to parent frame
	33.  I click on Recaptcha checkbox within 'recaptcha_frame'
        * this is used mainly for Test type recaptcha
	34. 'element_Name' field is disabled
	35.  I refresh the current page
	36.  I accept alert
	37.  I wait for page load
	38. 'element_Name' is exists
	39. 'element_name' is active
        * It will validate element's class contains 'active' text or not
	40. I am on the home page
	41. I set browser's Geo location to 'geo_location_Name'
        * available geo Location option
            - us-minneapolis
            - us-california
            - india-vadodara (default)
	42. 'element_Name' is collapsed
        * validates if the element is collapsed based on 'aria-expanded'
	43. 'element_Name' is expanded
        * validates if the element is expanded based on 'aria-expanded'
	44.  I press 'esc/enter/tab' key on 'element_Name'
	45.  I wait for 'n' seconds
	46. 'numerical/alphabetical/alphanumerical/<enter expected content>' text is visible in 'element_Name'
         * This method validates whether the text visible in a specified
        UI element matches a given type such as numerical, alphabetical, 
        alphanumerical—or matches an exact expected value.
	47. 'element_Name' field is not empty
	48.  I close browser
	49.  Sitemap.xml is rendering in correct format
        * validating the DOM starting 'urlset' tag is of XML format
	50.  I click to browser back button
	51. The 'element_Name' is visible within view area

# This framework contains below features:

1. Testng + cucumber + Maven + Selenium + Selenide
2. Supported Browsers: IE, Edge, Chrome, FF
3. Locators to be defined in _.yml_ file
4. Reports generation using Cucumber-extent report listener
5. Generating report file name dynamically based on today's date
6. Send report file via email attachment
7. Email server configuration is in _email-smtp.config.json_ file
8. Environment specific urls, default language, email configuration mapping can be defined under _environmentconfig_
   folder
9. Logging feature using Log4J
10. Library for master test cases defined
11. Custom step definitions can be created under _stepdefinitions_ folder

@test - this is used for execute all test cases
@SCDAhomepage - execute home pages component (header and footer)
