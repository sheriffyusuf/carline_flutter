// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    GettingStartedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const GettingStartedPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SignupPage(),
      );
    },
    OtpRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const OtpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NewPasswordPage(),
      );
    },
    LocalAuthRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LocalAuthPage(),
      );
    },
    PickInterestRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const PickInterestPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/onboarding',
          fullMatch: true,
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding',
        ),
        RouteConfig(
          GettingStartedRoute.name,
          path: '/getting-started',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          SignupRoute.name,
          path: '/signup',
        ),
        RouteConfig(
          OtpRoute.name,
          path: '/otp',
        ),
        RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        ),
        RouteConfig(
          NewPasswordRoute.name,
          path: '/new-password',
        ),
        RouteConfig(
          LocalAuthRoute.name,
          path: '/local-auth',
        ),
        RouteConfig(
          PickInterestRoute.name,
          path: '/pick-interest',
        ),
      ];
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [GettingStartedPage]
class GettingStartedRoute extends PageRouteInfo<void> {
  const GettingStartedRoute()
      : super(
          GettingStartedRoute.name,
          path: '/getting-started',
        );

  static const String name = 'GettingStartedRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignupPage]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<void> {
  const OtpRoute()
      : super(
          OtpRoute.name,
          path: '/otp',
        );

  static const String name = 'OtpRoute';
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [NewPasswordPage]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute()
      : super(
          NewPasswordRoute.name,
          path: '/new-password',
        );

  static const String name = 'NewPasswordRoute';
}

/// generated route for
/// [LocalAuthPage]
class LocalAuthRoute extends PageRouteInfo<void> {
  const LocalAuthRoute()
      : super(
          LocalAuthRoute.name,
          path: '/local-auth',
        );

  static const String name = 'LocalAuthRoute';
}

/// generated route for
/// [PickInterestPage]
class PickInterestRoute extends PageRouteInfo<void> {
  const PickInterestRoute()
      : super(
          PickInterestRoute.name,
          path: '/pick-interest',
        );

  static const String name = 'PickInterestRoute';
}
