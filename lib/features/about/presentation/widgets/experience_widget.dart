import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/images.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/expandable_text.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Experience',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ExpandableText(
                    text:
                        'As a Flutter Developer at Alexandria Electricity Distribution Company since January 2020, I specialize in building and designing cross-platform apps using Flutter. My expertise extends to converting desktop and web applications into mobile apps using Flutter, and I am adept at testing, maintaining, and debugging applications.',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            CircleAvatar(
              radius: 150.r,
              backgroundImage: AppImages.profileImage,
            ),
          ],
        ),
      ],
    );
  }
}