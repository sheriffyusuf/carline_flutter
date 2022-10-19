import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/pages/getting_started/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nb_utils/nb_utils.dart';

class GettingStartedPage extends HookWidget {
  const GettingStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentStep = useState("one");
    return Scaffold(
        backgroundColor:
            currentStep.value == "one" ? Colors.black : AppColor.primary,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        'Skip',
                        style: context.textTheme.button?.copyWith(
                          color: const Color(0xFF4038FF),
                        ),
                      )
                    ],
                  ).paddingSymmetric(vertical: 20, horizontal: 24),
                  if (currentStep.value == "one")
                    OnboardingWidget(
                      title: "Find the best car\nwithout headaches",
                      subtitle:
                          "You choose your car online. We inspect it\nand deliver it.",
                      showBackgroundImage: true,
                      onPressed: () => currentStep.value = "two",
                    ),
                  if (currentStep.value == "two")
                    OnboardingWidget(
                      title: "Choose the right car\nfor you",
                      buttonVariant: "primaryTwo",
                      subtitle:
                          "You choose your car online. We inspect it\nand deliver it.",
                      onPressed: () => {},
                    )
                ],
              ),
            )));
  }
}
