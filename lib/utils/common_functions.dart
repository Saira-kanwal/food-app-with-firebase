import 'package:flutter/material.dart';

class CommonFunctions
{
  static showSnackBar({required BuildContext context, required String message})
  {
    SnackBar snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}