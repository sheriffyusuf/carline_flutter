import 'dart:ui';

import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:carline_flutter/widgets/input_decoration/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class NewPasswordPage extends HookWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final showPassword = useState(false);
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                80.height,
                Text(
                  'Create your\nnew password',
                  style: context.textTheme.headline3?.copyWith(height: 1.25),
                ),
                Text(
                    'Your new password must be different from previous password.',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: AppColor.gray500, height: 1.65)),
                24.height,
                TextField(
                  obscureText: !showPassword.value,
                  //obscuringCharacter: '*',
                  decoration: inputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        TablerIcons.lock,
                        color: AppColor.gray400,
                        size: 20,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => showPassword.value = !showPassword.value,
                        child: Icon(
                          showPassword.value
                              ? TablerIcons.eye
                              : TablerIcons.eye_off,
                          color: AppColor.gray400,
                          size: 20,
                        ),
                      )),
                ),
                16.height,
                TextField(
                  obscureText: !showPassword.value,
                  //obscuringCharacter: '*',
                  decoration: inputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: const Icon(
                        TablerIcons.lock,
                        color: AppColor.gray400,
                        size: 20,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => showPassword.value = !showPassword.value,
                        child: Icon(
                          showPassword.value
                              ? TablerIcons.eye
                              : TablerIcons.eye_off,
                          color: AppColor.gray400,
                          size: 20,
                        ),
                      )),
                ),
                const Spacer(),
                CarlineButton(
                  title: 'Create New Password',
                  onPressed: () => showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: ((context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: (Container(
                            height: context.height() / 2,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: 8,
                                    width: 32,
                                    color: AppColor.gray100,
                                  ).cornerRadiusWithClipRRect(4).center(),
                                  40.height,
                                  Assets.svgs.passwordChange.svg(),
                                  24.height,
                                  Text(
                                    "Password Changed?",
                                    textAlign: TextAlign.center,
                                    style: context.textTheme.headline3
                                        ?.copyWith(height: 1.30, fontSize: 28),
                                  ),
                                  Text(
                                      'Awesome. You’re successfully updated your password.',
                                      textAlign: TextAlign.center,
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(
                                        color: AppColor.gray500,
                                        height: 1.65,
                                      )),
                                  const Spacer(),
                                  CarlineButton(
                                    title: 'Return to Sign In',
                                    onPressed: () => true,
                                    variant: "primary",
                                  ),
                                  16.height,
                                ]),
                          ).cornerRadiusWithClipRRectOnly(
                              topLeft: 32, topRight: 32)),
                        );
                      })),
                  variant: "primary",
                ),
              ],
            ).paddingSymmetric(horizontal: 24),
          ),
        ));
  }
}
