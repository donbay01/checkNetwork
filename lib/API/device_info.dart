import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DeviceInfoApi {
  static final deviceInfoPlugin = DeviceInfoPlugin();

  static Future<String> getPhoneInfo() async {
    if (Platform.isAndroid) {
      final info = await deviceInfoPlugin.androidInfo;

      return '${info.manufacturer} - ${info.model}';
    } else if (Platform.isIOS){
      final info = await deviceInfoPlugin.iosInfo;

      return '${info.name} ${info.model}';
    }

    else {
      throw UnimplementedError();
    }
  }
}