# flutter_desktop_folder_picker

A Flutter plugin for picking folder path in Desktop (Window and MacOS).

# Installation

Add this to pubspec.yaml

```dart
dependencies:
  flutter_desktop_folder_picker: ^0.0.1
```

### Progress

- [x] MacOS
- [x] Window

### How to use

```dart
String? path = await FlutterDesktopFolderPicker.openFolderPickerDialog();
```
