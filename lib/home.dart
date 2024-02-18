import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:profile_app/screens/profile_card.dart';
import 'package:profile_app/screens/profile_details.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Lottie.asset(
            'assets/lottie/space_background.json',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Use a flexible layout for ProfileDetails
          const Flexible(
            child: ProfileDetails(),
          ),
          // Adjust Positioned widget based on screen width
          Positioned(
            bottom: screenWidth > 600 ? 250 : 150, // Adapt for larger screens
            child: const ProfileCard(),
          ),
        ],
      ),
    );
  }
}
