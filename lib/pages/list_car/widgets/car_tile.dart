import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nb_utils/nb_utils.dart';

class CarTile extends StatelessWidget {
  const CarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: AppColor.gray50, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Assets.images.jeep.image(),
              12.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Jeep Rubicon',
                    style: context.textTheme.headline6,
                  ),
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.svgs.audiLogo.svg(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xFFFACC15),
                          ),
                          4.width,
                          const Text('5.0')
                        ],
                      ),
                    ],
                  ),
                ],
              ).expand()
            ],
          ),
          const Divider(
            color: AppColor.gray200,
          ).paddingSymmetric(vertical: 14.0),
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    TablerIcons.engine,
                    size: 16.0,
                    color: AppColor.gray500,
                  ),
                  4.width,
                  Text(
                    '470hp',
                    style: context.textTheme.overline,
                  )
                ],
              ),
              12.width,
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
                style:
                    context.textTheme.button!.copyWith(color: AppColor.primary),
              )
            ],
          )
        ],
      ),
    );
  }
}
