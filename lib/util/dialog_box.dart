import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_list/util/chroma.dart';
import 'package:to_do_list/util/custom_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp)
      ),
      backgroundColor: Colors.white.withOpacity(0.3),
      content: SizedBox(
        height: 120.h,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5.sp),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Chroma.whiteColor),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Chroma.whiteColor),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Chroma.whiteColor),
                ),
                hintText: 'Add new task',
                hintStyle: const TextStyle(color: Chroma.whiteColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'SAVE',
                  onPressed: onSave,
                ),
                SizedBox(
                  width: 20.w,
                ),
                CustomButton(
                  text: 'CANCEL',
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
