import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/strings.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: Text(
        AppStrings.myJob,
        style: TextStyle(
          color: Colors.grey[400],
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          fontSize: 12.sp,
        ),
      )
          .animate(delay: 200.ms, onPlay: (controller) => controller.repeat())
          .scale(
            curve: Curves.ease,
            delay: 5000.ms,
            duration: const Duration(milliseconds: 5000),
          ),
    );
  }
}
