import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:profile_app/core/widgets/title_text.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: const TitleText(prefix: 'Flutter', title: 'Developer')
          .animate(delay: 100.ms, onPlay: (controller) => controller.repeat)
          .scale(
            curve: Curves.bounceInOut,
            delay: 2000.ms,
            duration: const Duration(milliseconds: 5000),
          ),
    );
  }
}
