import 'package:flutter/material.dart';
import 'package:profile_app/widgets/custom_button_animation.dart';
import 'package:profile_app/widgets/resume.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: screenWidth > 600 ? 80 : 40, // Adapt for larger screens
      child: CustomButtonAnimation(
        color: Colors.amber,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Resume(),
            ),
          );
        },
        child: const Text(
          'Resume',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w900,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
