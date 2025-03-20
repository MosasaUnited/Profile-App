import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_router.dart';
import 'custom_button_animation.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        bottom: screenWidth > 600 ? 80 : 50,
      ), // Adapt for larger screens
      child: Hero(
        transitionOnUserGestures: true,
        tag: 'resumeButton', // Unique tag for animation
        child: CustomButtonAnimation(
          key: UniqueKey(),
          color: Colors.amber,
          onPressed: () {
            Future.delayed(const Duration(milliseconds: 400), () {
              GoRouter.of(context).push(AppRouter.kResume);
            });
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
                    delay: 200.ms, onPlay: (controller) => controller.repeat())
                .tint(
                  color: Colors.white,
                  delay: 5000.ms,
                  duration: const Duration(milliseconds: 5000),
                ),
          ),
        ),
      ),
    );
  }
}
