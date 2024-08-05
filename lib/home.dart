import 'package:flutter/material.dart';

import 'features/home/screens/profile_card.dart';
import 'features/home/screens/profile_details.dart';
import 'features/home/widgets/lottie_file.dart';
import 'features/home/widgets/resume_button.dart';

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
            SizedBox(),
            ProfileCard(),
            ResumeButton(),
          ],
        ),
      ),
    );
  }
}
