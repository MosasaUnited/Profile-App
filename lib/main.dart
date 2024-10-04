import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/profile_app.dart';

void main() async{
  // To Fix texts being hidden bug in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(const ProfileApp());
  //   DevicePreview(
  //     enabled: false,
  //     builder: (context) => ,
  //   ),
  // );
}
