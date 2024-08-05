import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/models/profile_link_model.dart';

class ProfileIconButton extends StatelessWidget {
  final ProfileLink link;

  const ProfileIconButton({super.key, required this.link});

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
                  content: Text('No email app found. Please install one.'),
                  backgroundColor: Colors.redAccent,
                ),
              );
            }
          } catch (error) {
            print('Error launching email: $error');
          }
        } else if (link.url.startsWith('whatsapp://')) {
          // Handle WhatsApp Link
          if (await canLaunchUrl(Uri.parse(link.url))) {
            await launchUrl(Uri.parse(link.url));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('WhatsApp Not Installed'),
                backgroundColor: Colors.redAccent,
              ),
            );
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
