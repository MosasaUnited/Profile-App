import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/home/presentation/screens/profile_card.dart';
import 'package:profile_app/features/home/presentation/screens/profile_details.dart';

import '../widgets/resume_button.dart';

class HomeProfileBody extends StatelessWidget {
  const HomeProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
