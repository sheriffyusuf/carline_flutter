import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class PickLocationPage extends StatelessWidget {
  const PickLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose a location',
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        16.height,
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: AppColor.gray100),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                TablerIcons.map_pin,
                color: AppColor.gray900,
              ).onTap(
                () => true,
                splashColor: Colors.transparent,
              ),
              12.width,
              TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Enter Location',
                  hintStyle: GoogleFonts.urbanist(),
                ),
              ).expand(),
            ],
          ),
        ),
        16.height,
        24.height,
        Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.gray200),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColor.gray900,
                      borderRadius: BorderRadius.circular(24)),
                  child: const Icon(
                    TablerIcons.map_pin,
                    color: Colors.white,
                  ).center(),
                ),
                12.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Use my current location',
                      style: context.textTheme.button!.copyWith(height: 1.65),
                    ),
                    Text(
                      'Jackson Street, San Francisco',
                      style: GoogleFonts.urbanist(
                          fontSize: 14, height: 1.70, color: AppColor.gray500),
                    ),
                  ],
                ).expand(),
                const Icon(
                  TablerIcons.chevron_right,
                  color: AppColor.gray300,
                )
              ],
            )),
        16.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '50',
              style: context.textTheme.caption,
            ),
            4.width,
            const Text(
              'available cars in the current location',
              style: TextStyle(height: 1.70, color: AppColor.gray500),
            )
          ],
        ),
        const Spacer(),
        CarlineButton(
          title: 'Continue',
          onPressed: () => true,
          variant: "primary",
        ),
        16.height,
        const AppOutlinedButton(
          title: 'Resend Code',
        ),
        48.height,
      ]).paddingSymmetric(horizontal: 24),
    );
  }
}
