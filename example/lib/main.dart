import 'package:flutter/material.dart';
import 'package:swift_progress_button/swift_progress_button.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Swift Progress Button Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  bool isLoading1 = false;
  bool isLoading2 = false;

  void _showToast(
      BuildContext context, String textValue, Color backgroundColor) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(
          textValue,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'UNDO',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwiftProgressButton(
              buttonHeight: 55.0,
              buttonWidth: 300.0,
              buttonRadius: 8.0,
              buttonText: "Submit",
              buttonColor: Colors.red,
              onPressed: () {
                setState(() {
                  isLoading = true;
                });

                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    isLoading = false;
                  });
                  _showToast(context, "Action Completed!", Colors.red);
                });
              },
              isLoading: isLoading,
              textStyle: const TextStyle(color: Colors.white, fontSize: 16.0),
              progressIndicatorColor: Colors.white,
              progressIndicatorStrokeWidth: 2.0,
              progressIndicatorHeight: 30.0,
              progressIndicatorWidth: 30.0,
            ),
            const SizedBox(height: 16.0),
            SwiftProgressButton(
              buttonHeight: 55.0,
              buttonWidth: 300.0,
              buttonRadius: 8.0,
              buttonText: "Submit",
              buttonColor: appColor,
              onPressed: () {
                setState(() {
                  isLoading1 = true;
                });

                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    isLoading1 = false;
                  });
                  _showToast(context, "Action Completed!", appColor);
                });
              },
              isLoading: isLoading1,
              textStyle: const TextStyle(color: Colors.white, fontSize: 16.0),
              progressIndicatorColor: Colors.white,
              progressIndicatorStrokeWidth: 2.0,
              progressIndicatorHeight: 30.0,
              progressIndicatorWidth: 30.0,
            ),
            const SizedBox(height: 16.0),
            SwiftProgressButton(
              buttonHeight: 55.0,
              buttonWidth: 300.0,
              buttonRadius: 8.0,
              buttonText: "Submit",
              buttonColor: Colors.blue,
              onPressed: () {
                setState(() {
                  isLoading2 = true;
                });

                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    isLoading2 = false;
                  });
                  _showToast(context, "Action Completed!", Colors.blue);
                });
              },
              isLoading: isLoading2,
              textStyle: const TextStyle(color: Colors.white, fontSize: 16.0),
              progressIndicatorColor: Colors.white,
              progressIndicatorStrokeWidth: 2.0,
              progressIndicatorHeight: 30.0,
              progressIndicatorWidth: 30.0,
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
