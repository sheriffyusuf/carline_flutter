import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FadeShimmer(
              width: 101,
              height: 20,
              radius: 8,
              fadeTheme: FadeTheme.light,
              millisecondsDelay: 300,
            ),
            FadeShimmer(
              width: 55,
              height: 20,
              radius: 8,
              fadeTheme: FadeTheme.light,
              millisecondsDelay: 300,
            ),
          ],
        ),
        16.height,
        GridView.builder(
            itemCount: 3,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9),
            itemBuilder: ((context, index) {
              return Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.gray200),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FadeShimmer(
                        width: 40,
                        height: 40,
                        radius: 10,
                        fadeTheme: FadeTheme.light,
                        millisecondsDelay: 300,
                      ),
                      12.height,
                      const FadeShimmer(
                        width: 48,
                        height: 14,
                        radius: 4,
                        fadeTheme: FadeTheme.light,
                        millisecondsDelay: 300,
                      ),
                    ],
                  ));
            })),
        24.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FadeShimmer(
              width: 101,
              height: 20,
              radius: 8,
              fadeTheme: FadeTheme.light,
              millisecondsDelay: 300,
            ),
            FadeShimmer(
              width: 55,
              height: 20,
              radius: 8,
              fadeTheme: FadeTheme.light,
              millisecondsDelay: 300,
            ),
          ],
        ),
        24.height,
        ListView.separated(
            separatorBuilder: (_, __) => 16.width,
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Container(
                width: 228,
                decoration: BoxDecoration(
                    color: AppColor.gray100,
                    borderRadius: BorderRadius.circular(20.0)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FadeShimmer(
                          width: 48,
                          height: 14,
                          radius: 4,
                          fadeTheme: FadeTheme.light,
                          millisecondsDelay: 300,
                        ),
                        Icon(
                          Icons.favorite,
                          color: AppColor.gray300,
                        ),
                      ],
                    ),
                    16.height,
                    const FadeShimmer(
                      width: 185,
                      height: 118,
                      radius: 8,
                      fadeTheme: FadeTheme.light,
                      millisecondsDelay: 300,
                    ),
                    12.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FadeShimmer(
                          width: 101,
                          height: 16,
                          radius: 4,
                          fadeTheme: FadeTheme.light,
                          millisecondsDelay: 300,
                        ),
                        FadeShimmer(
                          width: 55,
                          height: 16,
                          radius: 4,
                          fadeTheme: FadeTheme.light,
                          millisecondsDelay: 300,
                        ),
                      ],
                    ),
                    const Divider().paddingSymmetric(vertical: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FadeShimmer(
                          width: 101,
                          height: 16,
                          radius: 4,
                          fadeTheme: FadeTheme.light,
                          millisecondsDelay: 300,
                        ),
                        FadeShimmer(
                          width: 55,
                          height: 16,
                          radius: 4,
                          fadeTheme: FadeTheme.light,
                          millisecondsDelay: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            })).withHeight(300)
      ],
    );
  }
}
