import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/utils/app_router.dart';

import 'core/theme/theme_data_style.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Profile App',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: ThemeDataStyle.light,
        darkTheme: ThemeDataStyle.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
