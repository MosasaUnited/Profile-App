import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/widgets/custom_divider.dart';
import 'package:profile_app/features/overview/presentation/screens/profile_card.dart';
import 'package:profile_app/features/overview/presentation/screens/profile_details.dart';
import 'package:profile_app/features/overview/presentation/widgets/about_me_widget.dart';
import 'package:profile_app/features/overview/presentation/widgets/experience_widget.dart';

import '../widgets/resume_button.dart';

class HomeProfileBody extends StatelessWidget {
  const HomeProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          const ProfileDetails(),
          SizedBox(
            height: 10.h,
          ),
          const ProfileCard(),
          SizedBox(
            height: 5.h,
          ),
          const ResumeButton(),
          SizedBox(
            height: 30.h,
          ),
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
    );
  }
}
