import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDesktopFolderPicker {
  static const MethodChannel _channel = MethodChannel('flutter_desktop_folder_picker');

  static Future<String?> openFolderPickerDialog() async {
    final String? path = await _channel.invokeMethod('openFolderDialog');
    return path;
  }
}
