import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/widgets/custom_divider.dart';

import '../widgets/about_me_widget.dart';
import '../widgets/experience_widget.dart';

class OverViewScreenBody extends StatelessWidget {
  const OverViewScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50.h,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const AboutMeWidget(),
              SizedBox(
                height: 100.h,
              ),
              const CustomDivider(),
              SizedBox(
                height: 100.h,
              ),
              const ExperienceWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
