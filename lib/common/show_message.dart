import 'package:flutter/material.dart';
import '../utils/constants.dart';

showMessage({
  required String title,
  required Color color,
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.all(20),
      duration: const Duration(seconds: 2),
      backgroundColor: color,
      content: Text(
        title,
        style: kMedium.copyWith(fontSize: 15),
      ),
    ),
  );
}
