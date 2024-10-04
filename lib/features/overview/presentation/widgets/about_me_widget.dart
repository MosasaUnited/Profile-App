import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/theme/styles.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/expandable_text.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'About',
              style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.w900,
                  color: MyColors.myYellow,
                  fontSize: 18.sp),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ExpandableText(
                      text:
                          'As an enthusiastic and skilled Flutter developer with 5 years of experience, I specialize in building beautiful, high-performing mobile applications. My expertise extends to the Flutter framework, Dart programming, and UI/UX design principles. I have a proven track record of delivering clean, well-tested, and user-friendly apps across multiple platforms (iOS and Android). Additionally, I thrive in fast-paced environments and excel at collaborating within Agile teams'),
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ), 
            CircleAvatar(
              radius: 100.r,
              backgroundImage: AppImages.aboutImage,
            ),
          ],
        ),
      ],
    );
  }
}
