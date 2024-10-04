import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/strings.dart';
import '../../data/models/profile_link_model.dart';
import '../widgets/profile_icon_button.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  static const _profileLinks = [
    ProfileLink(
      url: AppStrings.myWhatsapp,
      iconAssetPath: 'assets/icons/whatsapp.png',
      label: 'WhatsApp',
    ),
    ProfileLink(
      url: AppStrings.myEmail,
      iconAssetPath: 'assets/icons/email.png',
      label: 'Email',
    ),
    ProfileLink(
      url: AppStrings.myGithub,
      iconAssetPath: 'assets/icons/github.png',
      label: 'GitHub',
    ),
    ProfileLink(
      url: AppStrings.myLinkedIn,
      iconAssetPath: 'assets/icons/linkedin.png',
      label: 'LinkedIn',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 80.h,
      ), // Adapt for larger screens
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final link in _profileLinks)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
              child: ProfileIconButton(link: link),
            ),
        ],
      ),
    );
  }
}
