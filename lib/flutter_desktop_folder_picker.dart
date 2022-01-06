import 'dart:async';
import 'dart:io';

import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:flutter/services.dart';

class FlutterDesktopFolderPicker {
  static const MethodChannel _channel = MethodChannel('flutter_desktop_folder_picker');

  static Future<String?> openFolderPickerDialog() async {
    String? path;
    if (Platform.isMacOS) {
      path = await _channel.invokeMethod('openFolderDialog');
    } else if (Platform.isWindows) {
      DirectoryPicker picker = DirectoryPicker();
      picker.title = "Pick a directory";
      Directory? directory = picker.getDirectory();
      if (directory != null) {
        path = directory.path;
      }
    }
    return path;
  }
}
