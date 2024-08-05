import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class ProfileLink {
  final String url;
  final String iconAssetPath;
  final String label;

  const ProfileLink({
    required this.url,
    required this.iconAssetPath,
    required this.label,
  });
}
