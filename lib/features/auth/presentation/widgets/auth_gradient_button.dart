import 'package:blog_app/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const AuthGradientButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppPalette.gradient1,
            AppPalette.gradient2,
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          borderRadius: BorderRadius.circular(7)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppPalette.transparentColor,
              shadowColor: AppPalette.transparentColor,
              fixedSize: const Size(
                395,
                55,
              )),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          )),
    );
  }
}
