import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

   const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
      color: Colors.white.withOpacity(0.3),
      child: Text(text),
    );
  }
}
