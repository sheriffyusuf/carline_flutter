import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

var variants = {
  "primary": {"borderColor": AppColor.gray200, "textColor": AppColor.gray900},
  "primaryTwo": {
    "borderColor": AppColor.primary.shade300,
    "textColor": Colors.white
  }
};

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {super.key,
      required this.title,
      this.icon,
      this.onPressed,
      this.variant = "primary"});
  final String title;
  final Widget? icon;
  final VoidCallback? onPressed;
  final String? variant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (icon != null)
          Positioned(top: 0, bottom: 0, left: 20, child: icon ?? Container()),
        AppButton(
          onTap: onPressed,
          text: title,
          width: double.infinity,
          textColor: variants[variant]?["textColor"] ?? AppColor.gray900,
          textStyle: context.textTheme.titleMedium?.copyWith(
              height: 1.65,
              color: variants[variant]?["textColor"] ?? AppColor.gray900,
              fontWeight: FontWeight.normal),
          // textStyle: const TextStyle(
          //   height: 1.65, color: Colors.white, fontWeight: FontWeight.normal),
          shapeBorder: RoundedRectangleBorder(
              side: BorderSide(
                  color: variants[variant]?["borderColor"] ??
                      AppColor.primary.shade300),
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
