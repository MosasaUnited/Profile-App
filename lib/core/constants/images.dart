import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  static AssetImage profileImage = const AssetImage(
    'assets/images/profile_image.jpg',
  );
  static SvgPicture githubIcon = SvgPicture.asset(
    'assets/svg/github.svg',
    width: 35,
    fit: BoxFit.cover,
  );
  static const String cdwsMockups = 'assets/images/cdws_mockups.png';

  static const String playstoreImage = 'assets/images/playstore_image.png';
}
