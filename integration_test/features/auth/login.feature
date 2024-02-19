Feature: Login

  Background: 
    Given I on "pageOnboarding" page
    When I tap "buttonSkip" key
    When I tap "buttonNext" key
    Then I navigate to "pageLogin" page

  Scenario: Login with input email and password then success
    Given I on "pageLogin" page
    When I enter "eve.holt@reqres.in" into "inputEmail" key
    When I scroll in "scrollLogin" key until visible "inputPassword" key
    When I enter "cityslicka" into "inputPassword" key
    When I hide keyboard
    When I tap "buttonLoginWithEmail" key
    Then I navigate to "pageMain" page

  Scenario: Login with account demo then success
    Given I on "pageLogin" page
    When I tap "buttonAccountDemo" key
    When I tap "buttonLoginWithEmail" key
    Then I navigate to "pageMain" page
