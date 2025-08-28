@lixil @test
Feature: Validate Product Selector flow

  @clearcookies
  Scenario: Navigate to Lixil Grohe Home page
    #And I navigate to 'https://qa-sc.grohe.us/Product-Selector'
    And I navigate to 'https://www.grohe.us/Product-Selector'

   Scenario:ProductSelector: Validate first question page
    Then 'First_question' is visible
    And 'Bathroom_selection' is visible
    And 'Kitchen_selection' is visible


  Scenario:ProductSelector: Validate 2nd question page
    When I click on 'Bathroom_selection'
    Then 'Second_question' is visible
    And Below 'Bathroom_options' are visible
      | Bath & Shower Controls |
      | Bathroom Accessories   |
      | Bathroom Sink Faucets  |
      | Bathtub Faucets        |
      | Handshowers            |
      | Sinks                  |
      | Toilets                |

  Scenario:ProductSelector: Validate 3rd question page
    When I click on 'Bathroom_Accessories'
    Then 'Third_question' is visible
    And Below 'Bathroom_Accessories_types' are visible
      | Accessory Kit        |
      | Grab Bar             |
      | Robe Hook            |
      | Soap Dish and Holder |
      | Toilet Paper Holder  |
      | Towel Bar            |
      | Towel Ring           |

  Scenario:ProductSelector: Validate 4th question page
    When I click on 'Accessory_kit'
    Then 'Forth_question' is visible
    And Below 'Color_options' are visible
      | Brushed Nickel   |
      | StarLight Chrome |

  Scenario:ProductSelector: Validate product page
    When I click on 'StartLight_Chrome_color'
    And I click on 'See_All_Products_button'
    And I switch browser
    Then Total count of 'Products' is 6
    And Total count of 'Products_with_StarLight_Chrome_selection' is 6

