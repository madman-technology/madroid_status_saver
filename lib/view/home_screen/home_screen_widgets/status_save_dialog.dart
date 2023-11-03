import 'package:flutter/material.dart';
import 'package:madroid_status_saver/utils/color_constant.dart';

class StatusSaveDialog extends StatelessWidget {
  StatusSaveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorConstant.bgColor,
      title: Text(
        'Save',
        style: TextStyle(
          color: ColorConstant.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: Text(
        'Do you want to save this status?',
        style: TextStyle(
          color: ColorConstant.secondaryColor,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(
              color: ColorConstant.redColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Save',
            style: TextStyle(
              color: ColorConstant.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
