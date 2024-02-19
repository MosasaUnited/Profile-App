import 'package:flutter/material.dart';
import 'package:profile_app/widgets/custom_button_animation.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: screenWidth > 600 ? 80 : 40, // Adapt for larger screens
      child: CustomButtonAnimation(
        color: Colors.amber,
        onPressed: () {},
        child: const Text(
          'Resume',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
