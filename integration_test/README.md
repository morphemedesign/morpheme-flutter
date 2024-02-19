# Morpheme Cucumber

## Installation

Requirement

1. Install [Flutter](https://docs.flutter.dev/get-started/install) and another installation e.g Android Studio, Xcode. you can check in this command:

    ```sh
    flutter doctor
    ```

2. After install Flutter then install morpheme with command:

    ```sh
    dart pub global activate morpheme
    ```

    now you can run this command to check:

    ```sh
    morpheme doctor
    ```

    If this directory is missing from your PATH, locate the file for your platform and add it.

    | Platform       | Cache location               |
    |----------------|------------------------------|
    | macOS or Linux | HOME/.pub-cache/bin          |
    | Windows*       | %LOCALAPPDATA%\Pub\Cache\bin |

3. Install gherkin executable and make sure to export to your PATH from this [Gherkin Executable](https://github.com/morphemeindonesia/morpheme/releases/tag/cucumber)
4. Install nodejs for generate cucumber json to report html [NodeJs](https://nodejs.org/en/download/)

Congratulation now you are ready for Instant Integration Test 🎉🎉🎉

## How to Run

First connect your device to your machine or open emulator / simulator

Install dependency with command:

```sh
morpheme get
```

Once your done installation, then run command:

```sh
morpheme cucumber
```

or your need to be specific feature you can do run command:

```sh
morpheme cucumber login
```

or multiple

```sh
morpheme cucumber login,register,home
```

by default run `integration_test/cucumber_test.dart` by flavor dev. if you want to running flavor stag or prod just add argument `--flavor stag` or `--flavor prod`

example run flavor stag

```sh
morpheme cucumber --flavor stag
```

## Report

If you already install nodejs its automatically generate report after test is done. But you can manualy to generate report if you have cucumber-report.json by command:

```sh
cd integration_test/report && npm install
```

then

```sh
node index.js
```

Change your report in `integration_test/report/index.js` according to your project:

```js
const projectName = "MyPertamina Merchant";
const appVersion = "1.0.0";
const environment = "Staging";

/* This is the configuration for the report. */
var options = {
  name: projectName,
  brandTitle: projectName + "Test Report",
  theme: "bootstrap",
  jsonFile: "cucumber-report.json",
  output: "cucumber-report.html",
  reportSuiteAsScenarios: true,
  scenarioTimestamp: true,
  launchReport: true,
  metadata: {
    "App Version": appVersion,
    Environment: environment,
  },
};
```

## Available Steps

### Arrange

| No | Name | Step Definition               | Description                       | Example                         |
|----|------|-------------------------------|-----------------------------------|---------------------------------|
| 1  | page | **Given** I on "([^"]*)" page | Making sure I'm on the right page | **Given** I on "loginPage" page |

### Action

| No | Name               | Step Definition                                                        | Description                                                | Example                                                                                                                                                       |
|----|--------------------|------------------------------------------------------------------------|------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1  | clearTextfield     | **When** I clear textield in "([^"]*)" key                             | Clear text from textield                                   | **When** I clear textield in "inputUsername" key                                                                                                              |
| 2  | enterText          | **When** I enter "([^"]*)" into "([^"]*)" key                          | Enters text into the currently focused text input          | **When** I enter "example@morpheme.design" into "inputEmail" key                                                                                                      |
| 3  | scrollUntilVisible | **When** I scroll in "([^"]*)" key until visible "([^"]*)" (key\|text) | Perform a scrolling action until key or text visible       | Key: **When** I scroll down in "scrollView" key until visible "item1" key<br/>Text: **When** I scroll down in "scrollView" key until visible "Item Pertama" text |
| 4  | tap                | **When** I tap "([^"]*)" (key\|text)                                   | Tap at the center of the widget located by key or text     | Key: **When** I tap "btnLogin" key<br/>Text: **When** I tap "Masuk" key                                                                                     |
| 5  | longTap            | **When** I longtap "([^"]*)" (key\|text)                               | Longtap at the center of the widget located by key or text | Key: **When** I longtap "textTooltips" key<br/>Text: **When** I longtap "Bantuan" key                                                                            |
| 5  | hideKeyboard       | **When** I hide keyboard                                               | Hide keyboard device                                       | **When** I hide keyboard                                                                                                                                      |

### Assert

| No | Name                | Step Definition                                      | Description                                                    | Example                                                                                                         |
|----|---------------------|------------------------------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| 1  | getTextSpesific     | **Then** I see "([^"]*)" text in "([^"]*)" key       | Text is show in screen with specific key                       | **Then** I see "Anda berhasil login" text in "snackbarText" key                                                 |
| 2  | getText             | **Then** I see "([^"]*)" text                        | Text is show in screen                                         | **Then** I see "Anda berhasil login" text                                                                       |
| 3  | getTextWithCounting | **Then** I see "([^"]*)" text have (\d+) in screen   | Text is show in screen with counting how much of the same text | **Then** I see "Nama: " text have 5 in screen                                                                   |
| 4  | waitForVisible      | **Then** I wait for "([^"]*)" (key\|text) to visible | Waits until key locates the target key or text visible         | Key: **Then** I wait for "btnCheckout" key to visible<br/> Text: **Then** I wait for "Checkout" text to visible |
| 5  | navigatePage        | **Then** I navigate to "([^"]*)" page                | Wait until navigate to spesific page                           | **Then** I navigate to "mainPage" page                                                                          |

### Flow Control

| No | Name | Step Definition                    | Description               | Example                          |
|----|------|------------------------------------|---------------------------|----------------------------------|
| 1  | wait | **Given** I wait (\d+) millisecond | Waiting meantime scenario | **Given** I wait 500 millisecond |
