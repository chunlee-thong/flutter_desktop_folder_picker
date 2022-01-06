import 'package:flutter/material.dart';
import 'package:flutter_desktop_folder_picker/flutter_desktop_folder_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _path = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Center(
          child: Text('Get folder path: $_path\n'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            String? path =
                await FlutterDesktopFolderPicker.openFolderPickerDialog;
            setState(() {
              _path = path;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
