import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/profile_card.dart';
import 'screens/profile_details.dart';
import 'widgets/lottie_file.dart';
import 'widgets/resume_button.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            const AppBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileDetails(),
                  const ProfileCard(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ResumeButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
