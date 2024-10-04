import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AppImages {
  static LottieBuilder backgroundImage = Lottie.asset(
    'assets/lottie/space_background.json',
    width: double.infinity.w,
    height: double.maxFinite.h,
    fit: BoxFit.cover,
  );
  static AssetImage profileImage = const AssetImage(
    'assets/images/profile_image.jpg',
  );
  static SvgPicture githubIcon = SvgPicture.asset(
    'assets/svg/github.svg',
  );
  static AssetImage aboutImage = const AssetImage('assets/images/about_image.jpg',
  );
  static AssetImage exprienceImage = const AssetImage('assets/images/exprience_image.jpg',
  );
}
