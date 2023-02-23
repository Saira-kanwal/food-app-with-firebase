import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';

class OathButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;

  const OathButton({Key? key, required this.title, required this.onPressed, required this.backgroundColor, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.primaryColor,width: 1)
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          splashFactory: InkSplash.splashFactory
        ),
        onPressed: onPressed(),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
        )

      )

    );
  }
}
