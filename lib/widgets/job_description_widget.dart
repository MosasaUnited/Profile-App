import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: const Text('Flutter Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  fontSize: 15))
          .animate(delay: 200.ms, onPlay: (controller) => controller.repeat())
          .scale(
            curve: Curves.ease,
            delay: 5000.ms,
            duration: const Duration(milliseconds: 5000),
          ),
    );
  }
}
