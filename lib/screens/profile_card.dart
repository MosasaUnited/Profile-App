import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Uri.parse('tel:+201224774051');
          },
          icon: const Icon(
            Icons.phone_outlined,
            color: Colors.amber,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Uri.parse('mailto:mostafa447@hotmail.com');
          },
          icon: const Icon(
            Icons.email_outlined,
            color: Colors.amber,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Uri.parse('https://github.com/MosasaUnited');
          },
          icon: const Icon(
            Icons.car_crash_outlined,
            color: Colors.amber,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Uri.parse('https://linkedin.com/in/mostafa-saad-247b5914b');
          },
          icon: const Icon(
            Icons.car_crash_outlined,
            color: Colors.amber,
            size: 50,
          ),
        ),
      ],
    );
  }
}
