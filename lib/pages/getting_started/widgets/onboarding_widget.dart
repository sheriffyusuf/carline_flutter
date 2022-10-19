import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.buttonVariant,
      this.showBackgroundImage = false,
      this.onPressed});

  final String title;
  final String subtitle;
  final bool showBackgroundImage;
  final Function()? onPressed;
  final String? buttonVariant;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (showBackgroundImage)
          Positioned.fill(child: Assets.images.carOne.image(fit: BoxFit.cover)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              maxLines: 2,
              style: context.textTheme.headline3
                  ?.copyWith(color: Colors.white, height: 1.25),
            ),
            12.height,
            Text(
              subtitle,
              style: context.textTheme.subtitle1
                  ?.copyWith(color: AppColor.gray400, height: 1.65),
            ),
            const Spacer(),
            if (!showBackgroundImage) Assets.images.carTwo.image(),
            if (!showBackgroundImage) const Spacer(),
            CarlineButton(
              title: 'Next',
              onPressed: onPressed,
              variant: buttonVariant,
            ),
            16.height
          ],
        ).paddingSymmetric(horizontal: 24)
      ],
    ).expand();
  }
}
