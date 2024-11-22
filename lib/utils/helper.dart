import 'package:flutter/material.dart';

class Helper {
  static void showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(message),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
