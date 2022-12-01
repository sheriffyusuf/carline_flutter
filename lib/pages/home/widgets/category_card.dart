import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.gray200),
          borderRadius: BorderRadius.circular(16)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: AppColor.gray900, borderRadius: BorderRadius.circular(10)),
          /*   child: SvgPicture.asset(brand["logo"],
                                    color: Colors.white)
                                .center(), */
        ),
        12.height,
        Text(
          "",
          //brand["name"],
          style: context.textTheme.caption,
        )
      ]),
    );
  }
}
