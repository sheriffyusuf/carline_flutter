import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Carline',
      theme: ThemeData(
        primarySwatch: AppColor.primary,
        textTheme: GoogleFonts.urbanistTextTheme(
          TextTheme(
              caption: boldTextStyle(size: 14, height: 1.70),
              headline5: boldTextStyle(size: 28, height: 1.30),
              headline3: boldTextStyle(
                size: 32,
              ),
              headline6: boldTextStyle(size: 18),
              button: boldTextStyle(size: 16),
              subtitle1: const TextStyle(fontWeight: FontWeight.w500)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
