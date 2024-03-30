import 'package:flutter/material.dart';
import 'package:profile_app/screens/profile_card.dart';
import 'package:profile_app/screens/profile_details.dart';
import 'package:profile_app/widgets/lottie_file.dart';
import 'package:profile_app/widgets/resume_button.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            AppBackground(),
            ProfileDetails(),
            ProfileCard(),
            ResumeButton(),
          ],
        ),
      ),
    );
  }
}
