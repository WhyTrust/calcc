import 'package:flutter/material.dart';

Widget calcButton(String displayText, Color? btnColor, Color textColor) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        splashFactory: InkSplash.splashFactory,
      ),
      onPressed: () {
        // TODO
      },
      child: Text(
        displayText,
        style: TextStyle(
          fontSize: 35,
          color: textColor,
        ),
      ),
    ),
  );
}
