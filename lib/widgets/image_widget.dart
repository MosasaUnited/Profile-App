import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage(
        'assets/images/profile_image.jpg',
      ),
      radius: 100,
      backgroundColor: Colors.transparent,
    );
  }
}
