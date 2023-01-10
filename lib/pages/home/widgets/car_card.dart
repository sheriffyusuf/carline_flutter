import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColor.gray100, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Assets.svgs.audiLogo.svg(),
              const Spacer(),
              const Icon(
                Icons.favorite,
                color: AppColor.gray300,
              )
            ],
          ),
          16.height,
          GestureDetector(
            child: Assets.images.audi.image(),
            onTap: () => context.pushRoute(const CarDetailRoute()),
          ),
          8.height,
          Row(
            children: [
              Text(
                'Audi A8 Quattro',
                style: context.textTheme.caption,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Color(0xFFFACC15),
                  ),
                  4.width,
                  Text(
                    '4.8',
                    style: context.textTheme.overline,
                  )
                ],
              ),
            ],
          ),
          9.height,
          const Divider(),
          9.height,
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    TablerIcons.manual_gearbox,
                    size: 14.0,
                    color: AppColor.gray500,
                  ),
                  4.width,
                  Text(
                    'Automatic',
                    style: context.textTheme.overline,
                  )
                ],
              ),
              const Spacer(),
              Text(
                '\$112,150.00',
                style: context.textTheme.caption!
                    .copyWith(color: AppColor.primary),
              )
            ],
          )
        ],
      ),
    );
  }
}
