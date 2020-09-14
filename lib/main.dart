import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen2.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_ui_16_sushi_social_media_app_ui/Screen3.dart';
import 'Screen1.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Screen3(),
    );
  }
}

