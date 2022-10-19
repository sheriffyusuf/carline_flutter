import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';

const variants = {
  "primary": {"background": AppColor.primary, "textColor": Colors.white},
  "primaryTwo": {"background": Colors.white, "textColor": AppColor.primary}
};

class CarlineButton extends StatelessWidget {
  const CarlineButton(
      {super.key,
      this.variant = "primary",
      this.onPressed,
      required this.title});

  final String? variant;
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                variants[variant]?["background"] ?? AppColor.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            padding: const EdgeInsets.symmetric(vertical: 16.0)),
        child: Text(
          title,
          style: TextStyle(
              height: 1.65,
              color: variants[variant]?["textColor"] ?? Colors.white),
        ));
  }
}
