import 'package:astrology_app/dependencies/Depencencies.dart';
import 'package:astrology_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      transitionDuration: const Duration(seconds: 2),
      defaultTransition: Transition.fadeIn,
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      locale: const Locale('en'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('hi'),
      ],
      initialRoute: Routes.splash,
    );
  }
}
