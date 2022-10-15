import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
                  Stack(
                    children: [
                      Positioned.fill(
                          child: Assets.images.carOne.image(fit: BoxFit.cover)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Find the best car\nwithout headaches',
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            style: context.textTheme.headline3
                                ?.copyWith(color: Colors.white, height: 1.25),
                          ),
                          12.height,
                          Text(
                            'You choose your car online. We inspect it\nand deliver it.',
                            style: context.textTheme.subtitle1?.copyWith(
                                color: const Color(0xFF9CA3AF), height: 1.65),
                          ),
                          const Spacer(),
                          ElevatedButton(
                              onPressed: () => true,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4038FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0)),
                              /*    style: ButtonStyle(
                                  padding:
                                    MaterialStateProperty.resolveWith((states) {
                                  return const EdgeInsets.symmetric(vertical: 16.0);
                                }),
                                fixedSize:
                                    MaterialStateProperty.resolveWith((states) {
                                  return const Size.fromHeight(56);
                                }),
                              ), */
                              child: const Text(
                                'Next',
                                style: TextStyle(height: 1.65),
                              )),
                          16.height
                        ],
                      ).paddingSymmetric(horizontal: 24)
                    ],
                  ).expand(),
                ],
              ),
            )));
  }
}
