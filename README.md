# Swift Progress Button

Swift Progress Button is a Flutter widget designed to display a customizable button with progress indicator functionality, suitable for use in various UI scenarios.


##


<img width="434" alt="Screenshot 2024-05-06 at 1 56 44 pm" src="https://github.com/yinkyAde/swift_progress_button/assets/50271975/3885d767-c835-4d4a-984c-aa4b91ea67b2">  

##

![ScreenRecording2024-05-06at1 58 57pm1-ezgif com-video-to-gif-converter](https://github.com/yinkyAde/swift_progress_button/assets/50271975/7e7f13a0-2b6d-4a34-8fa5-7b501fb61ec5)





## Description

Swift Progress Button simplifies the implementation of buttons with loading indicators in Flutter applications. It offers a customizable button widget that can seamlessly transition between normal and loading states, providing visual feedback to users during asynchronous tasks.


## Features

- **Customizable Button**: Define button dimensions, border radius, text, and color according to your design requirements.
- **Loading Indicator**: Display a progress indicator within the button when performing asynchronous tasks.
- **Responsive Interaction**: Prevent button taps while in the loading state to avoid multiple submissions.
- **Flexible Styling**: Configure the appearance of the loading indicator, including color, stroke width, height, and width.
- **Material Design Compliant**: Integrates smoothly with Material Design principles and Flutter's widget ecosystem.


## Getting Started

To use Swift Progress Button in your Flutter project, follow these steps:

1. Add the dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     swift_progress_button: ^x.x.x # Replace x.x.x with the latest version
2. import 'package:swift_progress_button/swift_progress_button.dart';
3. Start using the SwiftProgressButton widget in your UI code.


## Usage

```dart
SwiftProgressButton(
buttonHeight: 50.0,
buttonWidth: 150.0,
buttonRadius: 10.0,
buttonText: "Submit",
buttonColor: Colors.blue,
onPressed: () {
// Handle button press action
},
isLoading: false,
textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
progressIndicatorColor: Colors.white,
progressIndicatorStrokeWidth: 2.0,
progressIndicatorHeight: 30.0,
progressIndicatorWidth: 30.0,
);
```
For more advanced usage and customization options, refer to the example directory in the GitHub repository.

## Additional information

* GitHub Repository: https://github.com/yinkyAde/swift_progress_button.git
* Issues and Contributions: We welcome any feedback or contributions from the community. Please report any issues or submit pull requests through the GitHub repository.

