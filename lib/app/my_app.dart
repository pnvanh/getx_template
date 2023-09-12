import 'package:get/route_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:getx_template/app/bindings/initial_binding.dart';
import 'package:getx_template/app/routes/app_pages.dart';
import 'package:getx_template/flavor/build_config.dart';
import 'package:getx_template/flavor/env_config.dart';

import 'core/values/values.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.config;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.colorPrimary,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        fontFamily: 'Open Sans',
      ),
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
