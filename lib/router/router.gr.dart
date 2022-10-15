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
    GettingStartedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const GettingStartedPage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/getting-started',
          fullMatch: true,
        ),
        RouteConfig(
          GettingStartedRoute.name,
          path: '/getting-started',
        ),
      ];
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
