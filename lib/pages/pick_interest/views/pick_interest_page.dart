import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class PickInterestPage extends HookWidget {
  const PickInterestPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        "name": "Lamborghini",
        "logo": Assets.svgs.lambo.path,
      },
      {
        "name": "Ford",
        "logo": Assets.svgs.ford.path,
      },
    ];

    final selectedBrand = useState<List<String>>([]);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            ).paddingSymmetric(vertical: 20),
            16.height,
            Text(
              'Which brand of car do\nyou prefer?',
              style: context.textTheme.headline5,
            ),
            8.height,
            Text('Select all that brands you are interested in',
                style: context.textTheme.titleMedium
                    ?.copyWith(color: AppColor.gray500, height: 1.65)),
            32.height,
            Stack(
              children: [
                GridView.builder(
                  itemCount: brands.length,
                  itemBuilder: (BuildContext context, int index) {
                    var brand = brands[index];
                    String name = brand["name"];
                    bool isSelected = selectedBrand.value.contains(name);
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: isSelected
                                  ? AppColor.primary
                                  : AppColor.gray200),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColor.primary
                                      : AppColor.gray100,
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(brand["logo"],
                                      color: isSelected
                                          ? AppColor.white
                                          : AppColor.gray900)
                                  .center(),
                            ),
                            12.height,
                            Text(
                              name,
                              style: context.textTheme.caption,
                            )
                          ]),
                    ).onTap(() {
                      if (isSelected) {
                        selectedBrand.value = selectedBrand.value
                            .where((i) => i != name)
                            .toList();
                      } else {
                        selectedBrand.value = [...selectedBrand.value, name];
                      }
                    }, splashColor: Colors.transparent);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.5),
                  shrinkWrap: true,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CarlineButton(
                    title: 'Finish',
                    onPressed: () => true,
                  ),
                )
              ],
            ).expand()
          ],
        ).paddingSymmetric(horizontal: 24),
      ),
    );
  }
}
