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
  static AssetImage aboutImage = const AssetImage('assets/images/about_image.jpg',
  );
  static AssetImage exprienceImage = const AssetImage('assets/images/exprience_image.jpg',
  );
}
