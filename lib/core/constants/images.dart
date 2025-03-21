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

  // Screenshots
  static const String screenshotOne = 'assets/images/screenshot_one.jpg';
  static const String screenshotTwo = 'assets/images/screenshot_two.jpg';
  static const String screenshotThree = 'assets/images/screenshot_three.jpg';
  static const String screenshotFour = 'assets/images/screenshot_four.jpg';
  static const String screenshotFive = 'assets/images/screenshot_five.jpg';
  static const String screenshotSix = 'assets/images/screenshot_six.jpg';
  static const String screenshotSeven = 'assets/images/screenshot_seven.jpg';
  static const String screenshotEight = 'assets/images/screenshot_eight.jpg';
}
