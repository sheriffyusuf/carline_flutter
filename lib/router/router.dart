import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/pages/getting_started/views/getting_started_page.dart';
import 'package:carline_flutter/pages/onboarding/views/onboarding_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: OnboardingPage, path: '/onboarding', initial: true),
  AutoRoute(page: GettingStartedPage, path: '/getting-started')
])
// extend the generated private router
class AppRouter extends _$AppRouter {}
