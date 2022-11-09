import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabler_icons/tabler_icons.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      child: AutoTabsScaffold(
        routes: const [
          HomeRouter(),
          FavoritesRouter(),
          MessageRouter(),
          ProfileRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          int activeTabIndex = tabsRouter.activeIndex;
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            iconSize: 24.0,
            selectedIconTheme: const IconThemeData(color: AppColor.primary),
            unselectedItemColor: Colors.grey.shade400,
            selectedItemColor: AppColor.primary,
            selectedLabelStyle: GoogleFonts.urbanist(
                color: AppColor.primary,
                height: 1.70,
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(
                color: AppColor.gray400,
                height: 1.70,
                fontSize: 12,
                fontWeight: FontWeight.bold),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: activeTabIndex == 0
                    ? Assets.svgs.home.svg()
                    : const Icon(TablerIcons.smart_home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: activeTabIndex == 1
                    ? Assets.svgs.heart.svg()
                    : const Icon(TablerIcons.heart),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: activeTabIndex == 2
                    ? Assets.svgs.message.svg()
                    : const Icon(TablerIcons.message),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: activeTabIndex == 3
                    ? Assets.svgs.profile.svg()
                    : const Icon(
                        TablerIcons.user,
                      ),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
