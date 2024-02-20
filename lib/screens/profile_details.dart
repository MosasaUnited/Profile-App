import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile_image.jpg',
          ),
          radius: 100,
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Mostafa Mahmoud Saad',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 15),
        ),
        SizedBox(
          height: 50,
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
