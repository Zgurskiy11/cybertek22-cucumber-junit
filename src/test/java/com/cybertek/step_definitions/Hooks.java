package com.cybertek.step_definitions;

import com.cybertek.utilities.Driver;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {
    @Before ("@login")
    public void setupScenario(){
        System.out.println("--Setting up browser with further details...");
    }

    @Before (value = "@login", order = 1)// tag and order. If u use order, then put value in front of the tag
    public void setupScenario2(){
        System.out.println("--Setting up browser with further details...");
    }

    @After
    public void tearDownScenario(Scenario scenario){ //class Scenario from cucumber.java
     //  scenario.isFailed();
        //TakesScreenshot - interface

        if (scenario.isFailed()) {
            byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);//casting our driver type., .getScreenshotAs method coming from different interface
            scenario.attach(screenshot, "image/png", scenario.getName());
        }
        System.out.println("AFTER--Teardown steps are being applied...");
        Driver.closeDriver();
    }

    @BeforeStep
    public void setupStep(){
        System.out.println("----setup applying for each step");
    }

    @AfterStep
    public void afterStep(){
        System.out.println("----teardown applying for each step");
    }

}
