import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:profile_app/screens/profile_card.dart';
import 'package:profile_app/screens/profile_details.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Lottie.asset(
            'assets/lottie/space_background.json',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const ProfileDetails(),
          const Positioned(
            bottom: 150,
            child: ProfileCard(),
          ),
        ],
      ),
    );
  }
}