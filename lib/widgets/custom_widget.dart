import 'package:flutter/material.dart';

class CustomWidgets {

  // Create a static method for generating custom IconButton widgets
  static Widget customIconButton({
    required Widget iconData,
    required Function? onPressed,
  }) {
    return IconButton(
      icon: iconData,
      onPressed: () {
        onPressed!();
      },
      color: Colors.white, // Customize the color as needed
      iconSize: 25.0, // Customize the icon size as needed
    );
  }

}
