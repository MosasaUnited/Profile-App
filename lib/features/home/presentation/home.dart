import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/home/presentation/screens/profile_card.dart';
import 'package:profile_app/features/home/presentation/screens/profile_details.dart';
import 'package:profile_app/features/home/presentation/widgets/lottie_file.dart';
import 'package:profile_app/features/home/presentation/widgets/resume_button.dart';

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
