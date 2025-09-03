package stepdefinitions;

import com.codeborne.selenide.*;
import helper.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.logging.LogEntries;
import org.openqa.selenium.logging.LogEntry;
import org.openqa.selenium.logging.LogType;
import org.testng.Assert;
import org.openqa.selenium.*;
import org.testng.asserts.SoftAssert;
import java.util.logging.Level;

import java.time.LocalDate;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

import static com.codeborne.selenide.Selenide.$;
import static corestepdef.Common.*;
import static org.apache.xmlbeans.XmlBoolean.type;
import org.openqa.selenium.logging.LogEntries;
import org.openqa.selenium.logging.LogEntry;
import org.openqa.selenium.logging.LogType;

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

//    @Then("I check the console message")
//    public void iClickOnconsole() {
//        Waiter.waitForJavaScriptToLoad();
//        Waiter.waitForJquery();
//        WebDriverRunner.getWebDriver().manage().logs().get(LogType.BROWSER);
//        Accessconsolelogs();
//    }
//
//        public static void Accessconsolelogs () {
//
//            LogEntries logs = WebDriverRunner.getWebDriver().manage().logs().get(LogType.BROWSER);
//
//            List<LogEntry> successLogs = logs.getAll().stream()
//                    .filter(entry -> entry.getLevel().equals(Level.INFO))
//                    .toList();
//
//
//            for (LogEntry entry : logs) {
//                if (entry.getLevel().equals(Level.INFO)) {
//                    System.out.println(" Success Log: " + entry.getMessage());
//                }
//
//
//            }
//        }
}