import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends HookWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final controller = useTextEditingController();

    const length = 5;
    const borderColor = AppColor.primary;
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: GoogleFonts.urbanist(
          fontSize: 24, color: AppColor.gray900, fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        color: AppColor.gray100,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.transparent),
      ),
    );

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
                Assets.svgs.emptyState.svg(),
                32.height,
                Text(
                  'Almost there!',
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline3?.copyWith(height: 1.30),
                ),
                8.height,
                Text(
                    'Check your email inbox and input the verification code to verify your account',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: AppColor.gray500, height: 1.65)),
                24.height,
                Pinput(
                  length: length,
                  controller: controller,
                  focusNode: focusNode,
                  separator: 12.width,
                  defaultPinTheme: defaultPinTheme,
                  onCompleted: (pin) {
                    //  setState(() => showError = pin != '5555');
                  },
                  focusedPinTheme: defaultPinTheme.copyWith(
                    height: 56,
                    width: 56,
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: borderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      color: errorColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ).withHeight(68),
                const Spacer(),
                CarlineButton(
                  title: 'Continue',
                  onPressed: () => context.pushRoute(const LocalAuthRoute()),
                  variant: "primary",
                ),
                16.height,
                const AppOutlinedButton(
                  title: 'Resend Code',
                ),
                12.height,
              ],
            ).paddingSymmetric(horizontal: 24),
          ),
        ));
  }
}
