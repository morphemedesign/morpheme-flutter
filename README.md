# Morpheme

The Flutter starter kit utilizes a modular system for easier collaboration and maintenance. Assisted by the Morpheme CLI automation, it reduces the boilerplate from scratch.

## Setup Development

Version:

- Flutter: 3.16.9
- Min Android SDK: 21
- Min iOS: 13.0
- Environment: dev, stag & prod

Project prerequisites:

1. Install `morpheme cli`

    ```sh
    dart pub global activate morpheme_cli
    ```

2. Run the command `morpheme doctor` and make sure it runs without errors.

    ```sh
    morpheme doctor

    output:
    [✓] Flutter installed
    Doctor summary (to see all details, run flutter doctor -v):
    [✓] Flutter (Channel stable, 3.16.9, on macOS 13.0 22A380 darwin-arm64, locale en-ID)
    [✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
    [✓] Xcode - develop for iOS and macOS (Xcode 14.3.1)
    [✓] Chrome - develop for the web
    [✓] Android Studio (version 2022.2)
    [✓] VS Code (version 1.86.2)
    [✓] Connected device (2 available)
    [✓] Network resources

    • No issues found!
    [✓] flutterfire installed
    flutterfire use for 'morpheme firebase' command
    [✓] Gherkin installed
    gherkin use for 'morpheme cucumber' command
    [✓] npm installed
    npm use for create report integration test after 'morpheme cucumber' command
    [✓] lcov installed
    lcov use for 'morpheme coverage' command
    ```

Project _run_ steps:

1. Navigate to the project directory.
2. Request the `morpheme.yaml` file from a project colleague; if it's not available, use the `morpheme init` command.
3. Run the commands `morpheme get && morpheme config`.
4. To _run_ the application project, select the device and execute the Run command `morpheme run -f dev`.

## Command Morpheme Cli

For more information about morpheme, refer to the [Morpheme CLI Documentation](https://morphemedesign.github.io/morpheme-flutter-documentation/)

## Arsitektur

Framework:

- Morpheme
- BLoC
- Get it

Direktori:

- `assets`: Directory containing all asset files.
- `color2dart`: Directory containing to generate dart color class from yaml.
- `core`: Directory containing all files, including libraries and modules.
- `android`: Directory containing modules for Android.
- `ios`: Directory containing modules for iOS.
- `web`: Directory containing modules for Web.
- `feature`: Directory containing feature modules of the application.
- `integration_test`: Directory containing integration test with gherkin language supported with `morpheme_cucumber`.
- `json2dart`: Directory containing the json2dart.yaml file and JSON for automatic API integration generation.
- `local2dart`: Directory containing the local2dart.yaml file for automatic Local database integration generation with Sqflite.
- `lib`: Directory containing the main project files.

Third Party:

- Firebase

## Link API

Documentasi: <https://reqres.in/>

## Link Design

Figma: <https://figma.com>

## Integration Test

Integration test we use with morpheme_cucumber and morpheme for support gherkin language.
[Documentation Integration Test](./integration_test/README)
