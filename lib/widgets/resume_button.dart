import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile_app/widgets/custom_button_animation.dart';
import 'package:profile_app/widgets/resume.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: screenWidth > 600 ? 80 : 50, // Adapt for larger screens
      child: Hero(
        transitionOnUserGestures: true,
        tag: 'resumeButton', // Unique tag for animation
        child: CustomButtonAnimation(
          key: UniqueKey(),
          color: Colors.amber,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (context) {
              return const Resume();
            }));
          },
          child: Animate(
            child: const Text(
              'Resume',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w900,
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            )
                .animate(
                    delay: 1000.ms, onPlay: (controller) => controller.repeat())
                .tint(color: Colors.white, delay: 5000.ms),
          ),
        ),
      ),
    );
  }
}
