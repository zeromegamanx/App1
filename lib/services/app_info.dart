import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  PackageInfo? _packageInfo;
  Future<PackageInfo?> get packageInfo async {
    if (_packageInfo == null) _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo;
  }

  Future<String?> get versionApp async {
    return (await packageInfo)?.version;
  }

  Future<String?> get buildNumber async {
    return (await packageInfo)?.buildNumber;
  }
}
