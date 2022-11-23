import 'package:badges/badges.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/pages/home/widgets/home_body.dart';
import 'package:carline_flutter/utils/extensions/app_widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(TablerIcons.map_pin).circledBorder(),
              12.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 12, height: 1.70),
                  ),
                  Text(
                    'San Francisco',
                    style: context.textTheme.caption,
                  )
                ],
              ),
              const Spacer(),
              Badge(
                  position: BadgePosition.topEnd(top: 12, end: 12),
                  borderSide: const BorderSide(color: Colors.white, width: 0.5),
                  badgeContent: null,
                  child: const Icon(TablerIcons.bell_ringing).circledBorder()),
            ],
          ).paddingSymmetric(vertical: 10.0),
          16.height,
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.gray100),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.urbanist(),
                  ),
                ).expand(),
                const Icon(
                  TablerIcons.search,
                  color: AppColor.gray900,
                ).onTap(
                  () => true,
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          24.height,
          //const HomeSkeleton()
          const HomeBody()
        ],
      ).paddingSymmetric(horizontal: 24.0),
    ));
  }
}
