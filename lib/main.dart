import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/utils/app_router.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const ProfileApp(),
  ));
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
      useInheritedMediaQuery: false,
    );
  }
}
