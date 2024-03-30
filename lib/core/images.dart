import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppImages {
  static LottieBuilder backgroundImage = Lottie.asset(
    'assets/lottie/space_background.json',
    width: double.infinity,
    height: double.maxFinite,
    fit: BoxFit.cover,
  );
  static AssetImage profileImage = const AssetImage(
    'assets/images/profile_image.jpg',
  );
}
