import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri email = Uri.parse('mailto:mostafa447@hotmail.com');

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  static const _profileLinks = [
    _ProfileLink(
      url: 'tel:+201224774051',
      iconAssetPath: 'assets/icons/whatsapp.png',
      label: 'WhatsApp',
    ),
    _ProfileLink(
      url: 'mailto:mostafa447@hotmail.com',
      iconAssetPath: 'assets/icons/email.png',
      label: 'Email',
    ),
    _ProfileLink(
      url: 'https://github.com/MosasaUnited',
      iconAssetPath: 'assets/icons/github.png',
      label: 'GitHub',
    ),
    _ProfileLink(
      url: 'https://linkedin.com/in/mostafa-saad-247b5914b',
      iconAssetPath: 'assets/icons/linkedin.png',
      label: 'LinkedIn',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final link in _profileLinks)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _ProfileIconButton(link: link),
          ),
      ],
    );
  }
}

class _ProfileLink {
  final String url;
  final String iconAssetPath;
  final String label;

  const _ProfileLink({
    required this.url,
    required this.iconAssetPath,
    required this.label,
  });
}

class _ProfileIconButton extends StatelessWidget {
  final _ProfileLink link;

  const _ProfileIconButton({required this.link});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (link.url.startsWith('mailto:')) {
          // Handle email link with error handling
          try {
            final Uri email =
                Uri.parse(link.url); // Remove query parameters if needed
            if (await canLaunchUrl(email)) {
              await launchUrl(email);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('No email app found. Please install one.')),
              );
            }
          } catch (error) {
            print('Error launching email: $error');
          }
        } else {
          // Handle other links
          if (await canLaunchUrl(Uri.parse(link.url))) {
            launchUrl(Uri.parse(link.url));
          }
        }
      },
      icon: ImageIcon(
        AssetImage(link.iconAssetPath),
        color: Colors.amber,
        size: 50,
      ),
    );
  }
}
