Feature: Onboarding

  Scenario: Onboading with pressed next until started
    Given I on "pageOnboarding" page
    Then I see "Onboarding 1" text
    When I tap "buttonNext" key
    Then I see "Onboarding 2" text
    When I tap "buttonNext" key
    Then I see "Onboarding 3" text
    When I tap "buttonNext" key
    Then I navigate to "pageLogin" page

  Scenario: Onboading with pressed skip then started
    Given I on "pageOnboarding" page
    Then I see "Onboarding 1" text
    When I tap "buttonSkip" key
    Then I see "Onboarding 3" text
    When I tap "buttonNext" key
    Then I navigate to "pageLogin" page
