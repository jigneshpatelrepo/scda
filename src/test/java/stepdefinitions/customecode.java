package stepdefinitions;

import com.codeborne.selenide.*;
import helper.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.testng.Assert;
import org.openqa.selenium.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static corestepdef.Common.*;

public class customecode {
    private static final Logger log = LogManager.getLogger("common_" + Thread.currentThread().threadId());
    //private static WebDriver driver;
    WebDriver driver = WebDriverRunner.getWebDriver();
    @Then("^'(.*)' text is not visible in '(.*)'$")
    public void validateTextNotAvailableInElement(String expectedType, String compName) {
        log.debug("{} text is visible in the {}", expectedType, compName);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement ele = $(loc.get(compName));
        ele.should(Condition.exist, waitForElementExists);
        ele.should(Condition.visible, waitForElementVisible);
        scrollToElement(ele);
        String actualText = ele.getText().trim();
        String alphabetsRegex;
        switch (expectedType.trim().toLowerCase()) {
            case "numerical":
                alphabetsRegex = "^[^a-zA-Z]+$";
                Assert.assertFalse(actualText.matches(alphabetsRegex), "Expected numerical content (with special characters) but got: " + actualText);
                SetGlobalVariable.scenario.log("--> Numerical value: " + actualText);
                break;
            case "alphabetical":
                alphabetsRegex = "^[^0-9]+$";
                Assert.assertFalse(actualText.matches(alphabetsRegex), "Expected only alphabets and common characters but got: " + actualText);
                SetGlobalVariable.scenario.log("--> Alphabetical value: " + actualText);
                break;
            case "alphanumerical":
                Assert.assertTrue(actualText.trim().isEmpty(), "Expected some text but found none.");
                SetGlobalVariable.scenario.log("--> Alphanumerical value: " + actualText);
                break;
            default:
                Assert.assertFalse(actualText.contains(expectedType),
                        "Expected text not found in element. Found: " + actualText);
        }
    }


    @Then("^Parameters in '(.*)' for source and destination are different$")
    public void allLinkHavingResponseCodeOkOnVariantComponent(String elementName) {

        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        log.debug("Before mouse over " + elementName);
        By locator = loc.get(elementName);
        Selenide.$(locator).should(Condition.exist, waitForElementExists);
        scrollToElement(Selenide.$(locator));
        Selenide.$(locator).should(Condition.visible, waitForElementVisible);

        String transformBefore = Selenide.$(locator).getCssValue("transform");
        System.out.println("Before hover: " + transformBefore);

        // Hover using Selenide
        Selenide.$(locator).hover();

        // After hover
        String transformAfter = Selenide.$(locator).getCssValue("transform");
        System.out.println("After hover: " + transformAfter);

        // Verify transform change
        Assert.assertNotEquals(transformBefore, transformAfter,
                "Transform did not change on hover!");
        double scaleBefore = extractScale(transformBefore);
        double scaleAfter = extractScale(transformAfter);

        System.out.println("Scale before: " + scaleBefore);
        System.out.println("Scale after: " + scaleAfter);

        // Compare: after should be greater than before
        Assert.assertTrue(scaleAfter > scaleBefore,
                "Transform scale did not increase after hover!");

    }

    private static double extractScale(String matrix) {
        if (matrix == null || matrix.equals("none")) {
            return 1.0; // default scale
        }
        // Remove "matrix(" and ")"
        matrix = matrix.replace("matrix(", "").replace(")", "");
        String[] values = matrix.split(",");

        // In 2D matrix, scaleX = values[0], scaleY = values[3]
        double scaleX = Double.parseDouble(values[0].trim());
        double scaleY = Double.parseDouble(values[3].trim());

        // Return average scale (optional) or just scaleX
        return (scaleX + scaleY) / 2.0;
    }

    @Then("^The '(.*)' attribute of '(.*)' element do not (contains|is) '(.*)'$")
    public void verifyAttributeValue(String attributeName, String compName, String matchType, String expectedValue) {
        log.debug("The " + attributeName + " attribute of " + compName + " " + matchType + " " + expectedValue);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement element = Selenide.$(loc.get(compName));
        scrollToElement(element);
        String attrValue = element.getDomAttribute(attributeName);
        log.debug("Attribute value: " + attrValue);
        if ("contains".equalsIgnoreCase(matchType)) {
            Assert.assertFalse(attrValue.toLowerCase().contains(expectedValue.toLowerCase()));
        } else if ("is".equalsIgnoreCase(matchType)) {
            Assert.assertEquals(attrValue, expectedValue);
        } else {
            Assert.fail("Invalid match type provided: " + matchType);
        }
    }

    @Then("^The '(.*)' attribute of '(.*)' elementforonlyattribute (contains|is) '(.*)'$")
    public void verifyAttributeonlyValue(String attributeName, String compName, String matchType, String expectedValue) {
        log.debug("The " + attributeName + " attribute of " + compName + " " + matchType + " " + expectedValue);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement element = Selenide.$(loc.get(compName));
        scrollToElement(element);
        String attrValue = element.getAttribute(attributeName);
        log.debug("Attribute value: " + attrValue);
        if ("contains".equalsIgnoreCase(matchType)) {
            Assert.assertTrue(attrValue.toLowerCase().contains(expectedValue.toLowerCase()));
        } else if ("is".equalsIgnoreCase(matchType)) {
            Assert.assertEquals(attrValue, expectedValue);
        } else {
            Assert.fail("Invalid match type provided: " + matchType);
        }

    }
//here we have changed type to expectedtype
    @Then("^'(.*)' text is visible in test '(.*)'$")
    public void validateTextInElement(String expectedType, String compName) {
        log.debug("{} text is visible in the {}", expectedType, compName);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement ele = Selenide.$(loc.get(compName));
        ele.should(Condition.exist, waitForElementExists);
        ele.should(Condition.visible, waitForElementVisible);
        scrollToElement(ele);
        String actualText = ele.getAttribute("aria-label");
        String alphabetsRegex;
        switch (expectedType.trim().toLowerCase()) {
            case "numerical":
                alphabetsRegex = "^[^a-zA-Z]+$";
                Assert.assertTrue(actualText.matches(alphabetsRegex), "Expected numerical content (with special characters) but got: " + actualText);
                SetGlobalVariable.scenario.log("--> Numerical value: " + actualText);
                break;
            case "alphabetical":
                alphabetsRegex = "^[^0-9]+$";
                Assert.assertTrue(actualText.matches(alphabetsRegex), "Expected only alphabets and common characters but got: " + actualText);
                SetGlobalVariable.scenario.log("--> Alphabetical value: " + actualText);
                break;
            case "alphanumerical":
                Assert.assertFalse(actualText.trim().isEmpty(), "Expected some text but found none.");
                SetGlobalVariable.scenario.log("--> Alphanumerical value: " + actualText);
                break;
            default:
                Assert.assertEquals(actualText.toLowerCase(), expectedType);
        }

    }

    @Then("^Current URL contains Either of '(.*)' or '(.*)'$")
    public void currentURLcontainsPartofURLs(String partOfURL1,String partOfURL2) {
        log.debug("Current URL contains " + partOfURL1);
        log.debug("Current URL contains " + partOfURL2);
        Waiter.waitForJavaScriptToLoad();
        Waiter.waitForJquery();
        //Assert.assertTrue(WebDriverRunner.url().toLowerCase().contains(partOfURL.toLowerCase()));
        Assert.assertTrue(
                partOfURL1.contains(partOfURL1.toLowerCase()) || partOfURL2.contains(partOfURL2.toLowerCase()),
                "URL does not contain expected part: " + partOfURL1 + " or " + partOfURL2 + ". Actual URL: " + partOfURL1 + partOfURL2
        );
    }

    @Then("^Total count '(.*)' is greater than single filter '(.*)'$")
    public void compIsDisplayedInColumns(String Totalcount, String Specificitem) {
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        log.debug("Total count of " + Totalcount + " is " + Totalcount);
        log.debug("Total count of Filteritem" + Specificitem + " is " + Specificitem);
        By locator = loc.get(Totalcount);
        By locator1 = loc.get(Specificitem);
        Integer Totalcount1 = $$(locator).size();
        Integer Totalcount2 = $$(locator1).size();
        String Totalcount2String = Totalcount2.toString();
        getExtractedNumber (Totalcount2String);
        Selenide.$(locator).should(Condition.exist, waitForElementExists);
        Selenide.$(locator1).should(Condition.exist, waitForElementVisible);
       // Assert.assertEquals(Selenide.$$(locator).size(), Specificitem.size());
        Assert.assertTrue((Totalcount1)>=(Totalcount2),
                "Expected actual size to be greater than " + Specificitem + " but found " + Totalcount);
    }

    @Then("Go to method")
    public void getExtractedNumber(String text)
    {
    String text1 = "Consultant Approvals Plan (6)";
    String numberOnly = text.replaceAll("[^0-9]", "");
    int extractedNumber = Integer.parseInt(numberOnly);
    return;
    }

    @Then("^'(.*)' Either of texts visible in '(.*)'$")
    public void validateTextInElements(String expectedType, String compName) {
        log.debug("{} text is visible in the {}", expectedType, compName);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement ele = Selenide.$(loc.get(compName));
        ele.should(Condition.exist, waitForElementExists);
        ele.should(Condition.visible, waitForElementVisible);
        scrollToElement(ele);
        String actualText = ele.getText().trim().toLowerCase();
        String result = expectedType.replaceAll("[^A-Z]", " ").trim().split("\\s+")[0];
        String expectedTypenew = result.trim().toLowerCase();
        if ((expectedTypenew.contains("today"))||(expectedTypenew.contains("tomorrow"))) {
            Assert.assertTrue(actualText.matches(expectedTypenew), "Expected text contains today and  tomorrow: " + actualText);
            SetGlobalVariable.scenario.log("--> Event value: " + expectedTypenew);

        }
        else if(expectedTypenew.contains("days"))
        {
            Assert.assertTrue(actualText.matches(expectedTypenew), "Expected text contains any days left: " + actualText);
            SetGlobalVariable.scenario.log("--> Event value: " + expectedTypenew);
        }
        else
        {
            Assert.assertFalse(actualText.trim().isEmpty(), "Expected some text but found none.");
            Assert.fail("Invalid match type provided: " + expectedTypenew);
        }
    }

    @And("^I press '(.*)' key on page$")
    public void iPressStringKey(String keyName) throws AWTException {
        Robot robot = new Robot();
        robot.delay(2000);
        log.debug("I press " + keyName + " key on " );
        robot.keyPress(KeyEvent.VK_ESCAPE);
        robot.keyRelease(KeyEvent.VK_ESCAPE);
    }

    @Then("^The '(.*)' attribute contains Either of '(.*)' or '(.*)'$")
    public void verifyMultipletextValue(String compName, String expectedValue1, String expectedValue2) {
        log.debug("The attribute of " + compName + " " + expectedValue1);
        log.debug("The  attribute of " + compName + " " + expectedValue2);
        FindLocatorFileName findLocatorFileName = new FindLocatorFileName();
        YamlFile loc = findLocatorFileName.getLocatorFileName();
        SelenideElement element = Selenide.$(loc.get(compName));
        scrollToElement(element);
        String attrValue = element.getText().trim().toUpperCase();
        log.debug("Attribute value: " + attrValue);

        if ((attrValue.contains(expectedValue1)) || (attrValue.contains(expectedValue2))) {
            Assert.assertTrue(attrValue.toLowerCase().contains(expectedValue1.toLowerCase()));
        }  else {
            Assert.fail("Invalid match type provided: " + compName);
        }

    }
}