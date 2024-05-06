import 'package:flutter/material.dart';

class SwiftProgressButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;
  final double buttonRadius;
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;
  final bool isLoading;
  final TextStyle textStyle;
  final Color progressIndicatorColor;
  final double progressIndicatorStrokeWidth;
  final double progressIndicatorHeight;
  final double progressIndicatorWidth;

  const SwiftProgressButton({
    super.key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonRadius,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    required this.isLoading,
    required this.textStyle,
    this.progressIndicatorColor = Colors.white,
    this.progressIndicatorStrokeWidth = 2.0,
    this.progressIndicatorHeight = 30.0,
    this.progressIndicatorWidth = 30.0,
  });

  @override
  State<SwiftProgressButton> createState() => _SwiftProgressButtonState();
}

class _SwiftProgressButtonState extends State<SwiftProgressButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.buttonWidth,
        height: widget.buttonWidth,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.buttonRadius),
            color: widget.buttonColor,
          ),
          child: Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.buttonRadius),
            ),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                return widget.isLoading ? null : widget.onPressed();
              },
              child: Center(
                child: widget.isLoading
                    ? SizedBox(
                        height: widget.progressIndicatorHeight,
                        width: widget.progressIndicatorWidth,
                        child: CircularProgressIndicator(
                          color: widget.progressIndicatorColor,
                          strokeWidth: widget.progressIndicatorStrokeWidth,
                        ))
                    : Text(widget.buttonText, style: widget.textStyle),
              ),
            ),
          ),
        ));
  }
}
