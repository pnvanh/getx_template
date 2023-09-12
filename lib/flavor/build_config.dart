import 'package:getx_template/flavor/env_config.dart';
import 'package:getx_template/flavor/environment.dart';

class BuildConfig {
  late final EnvironmentType environmentType;
  late final EnvConfig config;
  bool _lock = false;

  static final BuildConfig instance = BuildConfig._internal();

  BuildConfig._internal();

  factory BuildConfig.instantiate({
    required EnvironmentType environmentType,
    required EnvConfig envConfig,
  }) {
    if (instance._lock) return instance;

    instance.environmentType = environmentType;
    instance.config = envConfig;
    instance._lock = true;

    return instance;
  }
}
