import 'package:package_info_plus/package_info_plus.dart';

enum EnvironmentType { DEVELOPMENT, PRODUCTION }

class Environment {
  late EnvironmentType current;

  Future<void> initEnvironment() async {
    final packageInfo = await PackageInfo.fromPlatform();
    switch (packageInfo.packageName) {
      case "com.madison.medibox.dev":
        current = EnvironmentType.DEVELOPMENT;
        break;
      default:
        current = EnvironmentType.PRODUCTION;
    }
  }
}
