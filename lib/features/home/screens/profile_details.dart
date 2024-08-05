import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          height: 50.h,
        ),
        const Divider(
          color: Colors.white,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
