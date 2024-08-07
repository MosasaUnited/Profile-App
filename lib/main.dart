import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/profile_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ProfileApp(),
    ),
  );
}
