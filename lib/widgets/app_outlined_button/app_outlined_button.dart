import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({super.key, required this.title, this.icon});
  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (icon != null)
          Positioned(top: 0, bottom: 0, left: 20, child: icon ?? Container()),
        AppButton(
          text: title,
          width: double.infinity,
          textColor: Colors.white,
          textStyle: const TextStyle(height: 1.65, color: Colors.white),
          shapeBorder: RoundedRectangleBorder(
              side: BorderSide(color: AppColor.primary.shade300),
              borderRadius: BorderRadius.circular(16.0)),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
      ],
    );
    /*   return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(16.0)),
            padding: const EdgeInsets.symmetric(vertical: 16.0)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        )); */
  }
}
