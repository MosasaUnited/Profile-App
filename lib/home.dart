import 'package:flutter/material.dart';
import 'package:profile_app/screens/profile_card.dart';
import 'package:profile_app/screens/profile_details.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          ProfileDetails(),
          ProfileCard(),
        ],
      ),
    );
  }
}
