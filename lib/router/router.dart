import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/pages/getting_started/views/getting_started_page.dart';
import 'package:carline_flutter/pages/login/views/forgot_password_page.dart';
import 'package:carline_flutter/pages/login/views/login_page.dart';
import 'package:carline_flutter/pages/login/views/new_password_page.dart';
import 'package:carline_flutter/pages/onboarding/views/onboarding_page.dart';
import 'package:carline_flutter/pages/otp/views/otp_page.dart';
import 'package:carline_flutter/pages/signup/views/signup_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: OnboardingPage, path: '/onboarding', initial: true),
  AutoRoute(page: GettingStartedPage, path: '/getting-started'),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignupPage, path: '/signup'),
  AutoRoute(page: OtpPage, path: '/otp'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgot-password'),
  AutoRoute(page: NewPasswordPage, path: '/new-password'),
])
// extend the generated private router
class AppRouter extends _$AppRouter {}
