import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swift_progress_button/src/swift_progress_button.dart';


void main() {
  group('SwiftProgressButton', () {
    testWidgets('renders text when not loading', (WidgetTester tester) async {
      // Define some test data
      const buttonText = "Click Me";
      const buttonColor = Colors.blue;
      const textStyle = TextStyle(color: Colors.white);

      // Create the widget
      final button = SwiftProgressButton(
        buttonHeight: 50,
        buttonWidth: 100,
        buttonRadius: 10,
        buttonText: buttonText,
        buttonColor: buttonColor,
        onPressed: () {}, // Empty function for testing
        isLoading: false,
        textStyle: textStyle,
      );

      // Render the widget
      await tester.pumpWidget(MaterialApp(home: button));

      // Find the Text widget
      final textFinder = find.text(buttonText);

      // Assert that the Text widget is found and has the correct style
      expect(textFinder, findsOneWidget);
      expect(tester.widget<Text>(textFinder).style, textStyle);
    });

    testWidgets('renders CircularProgressIndicator when loading', (WidgetTester tester) async {
      // Define some test data
      const buttonColor = Colors.blue;

      // Create the widget in loading state
      final button = SwiftProgressButton(
        buttonHeight: 50,
        buttonWidth: 100,
        buttonRadius: 10,
        buttonText: "", // Not used when loading
        buttonColor: buttonColor,
        onPressed: () {}, // Empty function for testing
        isLoading: true,
        textStyle: const TextStyle(color: Colors.white), // Not used when loading
      );

      // Render the widget
      await tester.pumpWidget(MaterialApp(home: button));

      // Find the CircularProgressIndicator widget
      final progressIndicatorFinder = find.byType(CircularProgressIndicator);

      // Assert that the CircularProgressIndicator widget is found
      expect(progressIndicatorFinder, findsOneWidget);
    });

    testWidgets('calls onPressed when button tapped and not loading', (WidgetTester tester) async {
      // Define some test data
      const buttonText = "Click Me";
      const buttonColor = Colors.blue;
      bool buttonTapped = false;

      // Create the widget with a mock onPressed function
      final button = SwiftProgressButton(
        buttonHeight: 50,
        buttonWidth: 100,
        buttonRadius: 10,
        buttonText: buttonText,
        buttonColor: buttonColor,
        onPressed: () => buttonTapped = true,
        isLoading: false,
        textStyle: const TextStyle(color: Colors.white),
      );

      // Render the widget
      await tester.pumpWidget(MaterialApp(home: button));

      // Find the button and tap it
      final buttonFinder = find.widgetWithText(Material, buttonText);
      await tester.tap(buttonFinder);

      // Assert that onPressed was called
      expect(buttonTapped, true);
    });

  });
}
