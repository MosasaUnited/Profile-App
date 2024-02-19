import 'package:flutter/material.dart';

import '../widgets/profile_icon_button.dart';

final Uri email = Uri.parse('mailto:mostafa447@hotmail.com');

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  static const _profileLinks = [
    ProfileLink(
      url: 'tel:+201224774051',
      iconAssetPath: 'assets/icons/whatsapp.png',
      label: 'WhatsApp',
    ),
    ProfileLink(
      url: 'mailto:mostafa447@hotmail.com',
      iconAssetPath: 'assets/icons/email.png',
      label: 'Email',
    ),
    ProfileLink(
      url: 'https://github.com/MosasaUnited',
      iconAssetPath: 'assets/icons/github.png',
      label: 'GitHub',
    ),
    ProfileLink(
      url: 'https://linkedin.com/in/mostafa-saad-247b5914b',
      iconAssetPath: 'assets/icons/linkedin.png',
      label: 'LinkedIn',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: screenWidth > 600 ? 250 : 150, // Adapt for larger screens
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final link in _profileLinks)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ProfileIconButton(link: link),
            ),
        ],
      ),
    );
  }
}
