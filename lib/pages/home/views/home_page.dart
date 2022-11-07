import 'package:badges/badges.dart';
import 'package:carline_flutter/utils/extensions/app_widget_extensions.dart';
import 'package:flutter/material.dart';
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
        ],
      ).paddingSymmetric(horizontal: 24.0),
    ));
  }
}
