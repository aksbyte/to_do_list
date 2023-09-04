import 'package:flutter/material.dart';
import 'package:to_do_list/util/chroma.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Chroma.whiteColor.withOpacity(0.3),
          padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, top: 8.sp, bottom: 8.sp)),
      child: Text(
        text,
        style: const TextStyle(color: Chroma.whiteColor),
      ),
    );
  }
}
