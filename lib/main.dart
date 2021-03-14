import 'package:easy_localization/easy_localization.dart';
import 'package:en_ar_app/ar_en.dart';
import 'package:flutter/material.dart';
import 'loc_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        child: MyApp(),
        path: 'assets/lang',
        saveLocale: true,
        supportedLocales: [
          Locale("en", "EN"),
          Locale("ar", "AR")
        ],
        startLocale: Locale("en", "EN"),
    ),
  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LocPage(),
    );
  }
}
