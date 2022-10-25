import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nb_utils/nb_utils.dart';

class GettingStartedPage extends HookWidget {
  const GettingStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      // extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            32.height,
            Stack(
              children: [
                Assets.logo.image(width: 120),
                Positioned(
                    top: 40, right: 0, child: Assets.images.iconBg.image()),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      64.height,
                      Text(
                        'Let’s get started',
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: context.textTheme.headline3
                            ?.copyWith(color: Colors.white, height: 1.25),
                      ),
                      12.height,
                      Text(
                        'Sign up or login to see what\nhappening near you',
                        style: context.textTheme.subtitle1
                            ?.copyWith(color: AppColor.gray400, height: 1.65),
                      ),
                    ]),
                Positioned(
                    left: 0,
                    right: -40,
                    bottom: 0,
                    child: Assets.images.carThree.image())
              ],
            ).paddingLeft(24).withHeight(460),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CarlineButton(
                  title: 'Next',
                  onPressed: () => context.pushRoute(const LoginRoute()),
                  variant: "primaryTwo",
                ),
                16.height,
                AppOutlinedButton(
                  title: 'Continue with Google',
                  variant: "primaryTwo",
                  icon: Logo(
                    Logos.google,
                    size: 20,
                  ),
                ),
                16.height,
                AppOutlinedButton(
                  title: 'Continue with Apple',
                  variant: "primaryTwo",
                  icon: Logo(
                    Logos.apple,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 24),
            32.height,
          ]),
        ),
      ),
    );
  }
}
