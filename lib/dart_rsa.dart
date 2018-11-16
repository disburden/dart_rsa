import 'dart:async';

import 'package:flutter/services.dart';

class DartRsa {
  static const MethodChannel _channel =
      const MethodChannel('dart_rsa');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }


  static Future<String> test() async {
    final String version = await _channel.invokeMethod('test');
    return version;
  }
}
