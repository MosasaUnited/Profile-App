import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/widgets/custom_divider.dart';
import 'package:profile_app/features/overview/presentation/widgets/about_me_widget.dart';
import 'package:profile_app/features/overview/presentation/widgets/experience_widget.dart';

class OverviewDetailsScreen extends StatelessWidget {
  const OverviewDetailsScreen({super.key});


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