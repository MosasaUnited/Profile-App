import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/widgets/custom_divider.dart';

import '../widgets/image_widget.dart';
import '../widgets/job_description_widget.dart';
import '../widgets/name_widget.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        const ImageWidget(),
        SizedBox(
          height: 15.h,
        ),
        const NameWidget(),
        SizedBox(
          height: 10.h,
        ),
        const JobDescription(),
        SizedBox(
          height: 20.h,
        ),
        const CustomDivider(),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
