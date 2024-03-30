import 'package:flutter/material.dart';
import 'package:profile_app/core/images.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .85,
      child: CircleAvatar(
        backgroundImage: AppImages.profileImage,
        radius: 100,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.amber,
      ),
    );
  }
}
