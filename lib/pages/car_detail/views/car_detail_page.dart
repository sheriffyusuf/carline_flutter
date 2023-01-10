import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class CarDetailPage extends StatelessWidget {
  const CarDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 12, 24, context.navigationBarHeight),
          //color: Colors.white,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  //  color: Colors.grey, //New
                  color: Color(0xFFFAFAFB), //New
                  blurRadius: 24.0,
                  offset: Offset(0, -8))
            ],
          ),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Price (Cash)'),
                Text(
                  "\$80,063",
                  style: context.textTheme.headline4,
                )
              ],
            ).expand(flex: 2),
            CarlineButton(
              title: 'Buy',
              onPressed: () => true,
              variant: "primary",
            ).expand(flex: 3),
          ]),
        ),
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          children: [
            Container(
              //  height: context.height() / 2,
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 28.0),
              // padding: const EdgeInsets.symmetric(horizontal: 24.0),
              decoration: const BoxDecoration(
                color: Color(0xFF10182C),
              ),
              child: Column(
                children: [
                  SizedBox(height: context.statusBarHeight),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => context.popRoute(),
                        child: const Icon(
                          TablerIcons.arrow_narrow_left,
                          color: AppColor.gray500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        TablerIcons.heart,
                        color: AppColor.gray500,
                      ),
                      16.width,
                      const Icon(
                        TablerIcons.share,
                        color: AppColor.gray500,
                      ),
                    ],
                  ).paddingSymmetric(vertical: 20.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Text(
                      'Free test drive',
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontSize: 12.0,
                          height: 1.70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  12.height,
                  Text(
                    'Audi Q7 50 Quattro',
                    style: context.textTheme.headline5!
                        .copyWith(color: Colors.white),
                  ),
                  24.height,
                  Assets.images.quattro.image()
                ],
              ),
            ),
            Container(
              //  height: 300,
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              color: AppColor.gray50,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    performanceCard(
                        context, TablerIcons.engine, "335", "HP", "Horsepower"),
                    const VerticalDivider(
                      color: AppColor.gray200,
                    ).paddingSymmetric(vertical: 20.0),
                    performanceCard(context, TablerIcons.dashboard, "369",
                        "lb-ft", "Torque"),
                    const VerticalDivider(
                      //color: Colors.red,

                      color: AppColor.gray200,
                    ).paddingSymmetric(vertical: 20.0),
                    performanceCard(
                        context, TablerIcons.clock, "5.6", "sec", "0-60 mph"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container performanceCard(BuildContext context, IconData icon, String value,
      String subValue, String accent) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Icon(icon),
          8.height,
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '$value ',
              style: GoogleFonts.urbanist(
                fontFeatures: [
                  // const FontFeature.subscripts()
                ],
                fontWeight: FontWeight.bold,
                color: AppColor.gray900,
                fontSize: 20.0,
                height: 1.40,
              ),
            ),
            TextSpan(
              text: subValue,
              style: GoogleFonts.urbanist(
                fontFeatures: [
                  //const FontFeature.subscripts()
                ],
                fontSize: 12.0,
                color: AppColor.gray900,
                height: 1.40,
              ),
            ),
          ])),
          Text(
            accent,
            style: context.textTheme.overline,
          )
        ],
      ),
    );
  }
}
