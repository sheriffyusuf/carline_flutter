import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/app_outlined_button/models/outlined_button_type.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:carline_flutter/widgets/input_decoration/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class SignupPage extends HookWidget {
  const SignupPage({super.key});

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
                  'Sign Up',
                  style: context.textTheme.headline3?.copyWith(height: 1.25),
                ),
                24.height,
                TextField(
                  decoration: inputDecoration(
                      hintText: 'Fullname',
                      prefixIcon: const Icon(
                        TablerIcons.user,
                        color: AppColor.gray400,
                        size: 20,
                      )),
                ),
                16.height,
                TextField(
                  decoration: inputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(
                        TablerIcons.mail,
                        color: AppColor.gray400,
                        size: 20,
                      )),
                ),
                16.height,
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
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 4,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  children: [
                    Text('By signing up, you agree to our?',
                        style: context.textTheme.titleMedium
                            ?.copyWith(color: AppColor.gray500)),
                    Text(
                      'Terms of Service',
                      style: context.textTheme.button
                          ?.copyWith(color: AppColor.primary),
                    ),
                    Text('and',
                        style: context.textTheme.titleMedium
                            ?.copyWith(color: AppColor.gray500)),
                    Text(
                      'Privacy Policy',
                      style: context.textTheme.button
                          ?.copyWith(color: AppColor.primary),
                    ),
                  ],
                ),
                30.height,
                CarlineButton(
                  title: 'Sign Up',
                  onPressed: () => context.pushRoute(const OtpRoute()),
                  variant: "primary",
                ),
                16.height,
                AppOutlinedButton(
                  title: 'Continue with Google',
                  buttonType: OutlinedButtonType.secondary,
                  icon: Logo(
                    Logos.google,
                    size: 20,
                  ),
                ),
                16.height,
                AppOutlinedButton(
                  title: 'Continue with Apple',
                  buttonType: OutlinedButtonType.secondary,
                  icon: Logo(
                    Logos.apple,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: AppColor.gray900),
                    ),
                    4.width,
                    Text(
                      'Sign in',
                      style: context.textTheme.button
                          ?.copyWith(color: AppColor.primary),
                    ).onTap(() => context.popRoute(),
                        splashColor: Colors.transparent),
                  ],
                ),
                12.height,
              ],
            ).paddingSymmetric(horizontal: 24),
          ),
        ));
  }
}
