package com.eviltester.cucumber;

import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@Cucumber.Options(format={"pretty", "html:target/cucumber"})
public class RunCukeTests {
}
