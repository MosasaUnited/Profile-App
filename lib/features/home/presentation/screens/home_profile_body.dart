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
        const ProfileDetails(),
        const ProfileCard(),
        SizedBox(
          height: 20.h,
        ),
        const ResumeButton(),
      ],
    );
  }
}
