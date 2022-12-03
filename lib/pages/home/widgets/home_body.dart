import 'package:carline_flutter/extensions/list_map_with_index_extension.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/pages/home/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tabler_icons/tabler_icons.dart';

List brands = [
  {
    "name": "Tesla",
    "logo": Assets.svgs.tesla.path,
  },
  {
    "name": "BMW",
    "logo": Assets.svgs.bmw.path,
  },
  {
    "name": "Ford",
    "logo": Assets.svgs.ford.path,
  },
];
List carType = [
  {
    "name": "SUV",
    "logo": Assets.svgs.tesla.path,
  },
  {
    "name": "Hatchback",
    "logo": Assets.svgs.bmw.path,
  },
  {
    "name": "EV/Hybrid",
    "logo": Assets.svgs.ford.path,
  },
];

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        16.height,
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: AppColor.gray100),
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
        ).paddingSymmetric(horizontal: 24.0),
        24.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Top brands', style: context.textTheme.headline6),
            Text(
              'View all',
              style: GoogleFonts.urbanist(
                  color: AppColor.gray500, fontWeight: FontWeight.w300),
            )
          ],
        ).paddingSymmetric(horizontal: 24.0),
        16.height,
        Row(children: [
          ...brands
              .mapWithIndex((brand, index) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.gray200),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColor.gray900,
                                borderRadius: BorderRadius.circular(10)),
                            child: SvgPicture.asset(brand["logo"],
                                    color: Colors.white)
                                .center(),
                          ),
                          12.height,
                          Text(
                            brand["name"],
                            style: context.textTheme.caption,
                          )
                        ]),
                  )
                      .paddingLeft(
                        index != 0 ? 16 : 0,
                      )
                      .expand())
              .toList()
        ]).paddingSymmetric(horizontal: 24.0),
        24.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Car recommendation', style: context.textTheme.headline6),
            Text(
              'View all',
              style: GoogleFonts.urbanist(
                  color: AppColor.gray500, fontWeight: FontWeight.w300),
            )
          ],
        ).paddingSymmetric(horizontal: 24.0),
        16.height,
        ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (c, i) => const CarCard(),
                separatorBuilder: (c, i) => 16.width,
                itemCount: 4)
            .withHeight(300),
        24.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop by car type', style: context.textTheme.headline6),
            Text(
              'View all',
              style: GoogleFonts.urbanist(
                  color: AppColor.gray500, fontWeight: FontWeight.w300),
            )
          ],
        ).paddingSymmetric(horizontal: 24.0),
        16.height,
        Row(children: [
          ...carType
              .mapWithIndex((brand, index) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.gray200),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColor.gray900,
                                borderRadius: BorderRadius.circular(10)),
                            child: SvgPicture.asset(brand["logo"],
                                    color: Colors.white)
                                .center(),
                          ),
                          12.height,
                          Text(
                            brand["name"],
                            style: context.textTheme.caption,
                          )
                        ]),
                  )
                      .paddingLeft(
                        index != 0 ? 16 : 0,
                      )
                      .expand())
              .toList()
        ]).paddingSymmetric(horizontal: 24.0),
        24.height,
        Container(
          height: 170,
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
          decoration: BoxDecoration(
              color: AppColor.gray900,
              borderRadius: BorderRadius.circular(18.0)),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Test drive in your area',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.65),
                  ),
                  Text('Test drive from your home or\na Carline hub.',
                      style: context.textTheme.overline!
                          .copyWith(color: AppColor.gray400)),
                  16.height,
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 12),
                        side: const BorderSide(
                          color: Colors.white, //Set border color
                          width: 1, //Set border width
                        ),
                      ),
                      onPressed: () => true,
                      child: const Text(
                        'View cars',
                      ))
                ],
              ),
              Positioned(
                  right: -50, top: -44, child: Assets.images.testDrive.image()),
            ],
          ),
        )
      ],
    );
  }
}
