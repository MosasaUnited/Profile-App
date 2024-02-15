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
            icon: const ImageIcon(
              AssetImage('assets/icons/whatsapp.png'),
              size: 200,
              color: Colors.amber,
            )),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            Uri.parse('mailto:mostafa447@hotmail.com');
          },
          icon: const ImageIcon(
            AssetImage('assets/icons/email.png'),
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
            icon: const ImageIcon(
              AssetImage('assets/icons/github.png'),
              size: 50,
              color: Colors.amber,
            )),
        const SizedBox(
          width: 20,
        ),
        IconButton(
            onPressed: () {
              Uri.parse('https://linkedin.com/in/mostafa-saad-247b5914b');
            },
            icon: const ImageIcon(
              AssetImage('assets/icons/linkedin.png'),
              size: 50,
              color: Colors.amber,
            )),
      ],
    );
  }
}
