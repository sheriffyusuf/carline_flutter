import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:carline_flutter/widgets/input_decoration/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class ForgotPasswordPage extends HookWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                104.height,
                Assets.svgs.forgotPassword.svg(),
                32.height,
                Text(
                  "Can't sign in?",
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline3?.copyWith(height: 1.30),
                ),
                8.height,
                Text(
                    'Check your email inbox and input the verification code to verify your account',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: AppColor.gray500, height: 1.65)),
                24.height,
                TextField(
                  decoration: inputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(
                        TablerIcons.mail,
                        color: AppColor.gray400,
                        size: 20,
                      )),
                ),
                const Spacer(),
                CarlineButton(
                  title: 'Reset Password',
                  onPressed: () => true,
                  variant: "primary",
                ),
                16.height,
                AppOutlinedButton(
                  title: 'Return to Sign In',
                  onPressed: () => context.popRoute(),
                ),
                12.height,
              ],
            ).paddingSymmetric(horizontal: 24),
          ),
        ));
  }
}
