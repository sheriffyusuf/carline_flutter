import 'package:carline_flutter/extensions/list_map_with_index_extension.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

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

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ),
        16.height,
        Row(children: [
          ...brands
              .mapWithIndex((brand, index) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    margin: EdgeInsets.only(left: index != 0 ? 16 : 0),
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
                  ).expand())
              .toList()
        ])
      ],
    );
  }
}
