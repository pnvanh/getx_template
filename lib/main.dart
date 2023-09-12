import 'package:flutter/material.dart';
import 'package:getx_template/app/my_app.dart';
import 'package:getx_template/flavor/build_config.dart';
import 'package:getx_template/flavor/env_config.dart';
import 'package:getx_template/flavor/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final environmentType = Environment();
  await environmentType.initEnvironment();

  final envConfig = EnvConfig.getConfig(environmentType.current);

  BuildConfig.instantiate(
    environmentType: environmentType.current,
    envConfig: envConfig,
  );
  runApp(const MyApp());
}
