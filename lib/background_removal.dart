
import 'dart:async';

import 'package:flutter/services.dart';

class BackgroundRemoval {
  static const MethodChannel _channel =
      const MethodChannel('background_removal');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
