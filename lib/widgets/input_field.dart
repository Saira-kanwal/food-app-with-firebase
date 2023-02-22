import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class InputFiled extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Widget? preIcon;
  final Widget? trailIcon;
  final TextInputType? keyboard;
  final Function()? onTap;
  final Function(String)? onChanged;
  final bool? readOnly;
  final Widget? suffixIcon;


  const InputFiled(
      {super.key, required this.controller, this.hintText, this.labelText, this.preIcon, this.trailIcon, this.keyboard, this.onTap, this.onChanged, this.readOnly, this.suffixIcon,});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(

            controller: controller,
            readOnly: readOnly ?? false,
            keyboardType: keyboard ?? TextInputType.text,
            cursorHeight: 25,
            onTap: onTap,
            style: const TextStyle(color: Colors.black),
            onChanged: onChanged,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 8, horizontal: 10),
                hintText: hintText,
                hintStyle: const TextStyle(color: AppColors.secondaryColor),
                prefixIcon: preIcon,
                suffixIcon: trailIcon,
                label: labelText != null ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(labelText ?? "",
                    style: const TextStyle(color: AppColors.primaryColor),),
                ) : null,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                    gapPadding: 0,
                    borderRadius: BorderRadius.circular(8)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                    gapPadding: 0,
                    borderRadius: BorderRadius.circular(8)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                    gapPadding: 0,
                    borderRadius: BorderRadius.circular(8)
                )
            )
        )
    );
  }
}


