import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo {
  String? _deviceId;
  Future<String?> get deviceId async {
    if (_deviceId == null) {
      var deviceInfo = DeviceInfoPlugin();
      if (Platform.isIOS) {
        var iosDeviceInfo = await deviceInfo.iosInfo;
        _deviceId = iosDeviceInfo.identifierForVendor; // unique ID on iOS
      } else {
        var androidDeviceInfo = await deviceInfo.androidInfo;
        _deviceId = androidDeviceInfo.androidId; // unique ID on Android
      }
    }
    return _deviceId;
  }

  String get deviceType => Platform.isIOS ? "IOS" : "ANDROID";

  String get via => "M";
}
