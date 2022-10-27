import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/app_outlined_button/models/outlined_button_style.dart';
import 'package:carline_flutter/widgets/app_outlined_button/models/outlined_button_type.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

OutlinedButtonStyle selectedButtonVariant(OutlinedButtonType buttonType) {
  switch (buttonType) {
    case OutlinedButtonType.secondary:
      return OutlinedButtonStyle(
          borderColor: AppColor.gray200, textColor: AppColor.gray900);
    case OutlinedButtonType.primaryTwo:
      return OutlinedButtonStyle(
          borderColor: AppColor.primary.shade300, textColor: Colors.white);
    case OutlinedButtonType.primary:
      return OutlinedButtonStyle(
          borderColor: AppColor.primary, textColor: AppColor.primary);
    default:
      return OutlinedButtonStyle(
          borderColor: AppColor.primary, textColor: AppColor.primary);
  }
}

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {super.key,
      required this.title,
      this.icon,
      this.onPressed,
      this.buttonType = OutlinedButtonType.primary});
  final String title;
  final Widget? icon;
  final VoidCallback? onPressed;
  final OutlinedButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = selectedButtonVariant(buttonType);
    return Stack(
      children: [
        if (icon != null)
          Positioned(top: 0, bottom: 0, left: 20, child: icon ?? Container()),
        AppButton(
          onTap: onPressed,
          text: title,
          width: double.infinity,
          textColor: buttonStyle.textColor,
          //   textColor: variants[variant]?["textColor"] ?? AppColor.gray900,
          textStyle: context.textTheme.titleMedium?.copyWith(
              height: 1.65,
              color: buttonStyle.textColor,
              // color: variants[variant]?["textColor"] ?? AppColor.gray900,
              fontWeight: FontWeight.normal),
          // textStyle: const TextStyle(
          //   height: 1.65, color: Colors.white, fontWeight: FontWeight.normal),
          shapeBorder: RoundedRectangleBorder(
              side: BorderSide(color: buttonStyle.borderColor),
              //  color: variants[variant]?["borderColor"] ??
              //    AppColor.primary.shade300),
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
