import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:carline_flutter/pages/dashboard/views/dashboard_page.dart';
import 'package:carline_flutter/pages/favorites/views/favorites_page.dart';
import 'package:carline_flutter/pages/getting_started/views/getting_started_page.dart';
import 'package:carline_flutter/pages/home/views/home_page.dart';
import 'package:carline_flutter/pages/list_car/views/list_car_page.dart';
import 'package:carline_flutter/pages/local_auth/views/local_auth_page.dart';
import 'package:carline_flutter/pages/login/views/forgot_password_page.dart';
import 'package:carline_flutter/pages/login/views/login_page.dart';
import 'package:carline_flutter/pages/login/views/new_password_page.dart';
import 'package:carline_flutter/pages/message/views/message_page.dart';
import 'package:carline_flutter/pages/onboarding/views/onboarding_page.dart';
import 'package:carline_flutter/pages/otp/views/otp_page.dart';
import 'package:carline_flutter/pages/pick_interest/views/pick_interest_page.dart';
import 'package:carline_flutter/pages/pick_location/views/pick_location_page.dart';
import 'package:carline_flutter/pages/profile/views/profile_page.dart';
import 'package:carline_flutter/pages/signup/views/signup_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: OnboardingPage, path: '/onboarding'),
  AutoRoute(
      path: "/",
      page: DashboardPage,
      children: [
        // our BooksRouter has been moved into the children field
        AutoRoute(
          path: "home",
          name: "HomeRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomePage),
            // AutoRoute(path: ':bookId', page: BookDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // our AccountRouter has been moved into the children field
        AutoRoute(
          path: "favorites",
          name: "FavoritesRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: FavoritesPage),
            //   AutoRoute(path: 'details', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: "message",
          name: "MessageRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: MessagePage),
            //   AutoRoute(path: 'details', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfilePage),
            //   AutoRoute(path: 'details', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
      initial: true),
  AutoRoute(page: PickLocationPage, path: '/pick-location'),
  AutoRoute(page: GettingStartedPage, path: '/getting-started'),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignupPage, path: '/signup'),
  AutoRoute(page: OtpPage, path: '/otp'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgot-password'),
  AutoRoute(page: NewPasswordPage, path: '/new-password'),
  AutoRoute(page: LocalAuthPage, path: '/local-auth'),
  AutoRoute(page: PickInterestPage, path: '/pick-interest'),
  AutoRoute(page: ListCarPage, path: '/list-car'),
])
// extend the generated private router
class AppRouter extends _$AppRouter {}
