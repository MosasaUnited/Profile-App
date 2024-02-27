import 'package:flutter/material.dart';

import '../widgets/image_widget.dart';
import '../widgets/job_description_widget.dart';
import '../widgets/name_widget.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        ImageWidget(),
        SizedBox(
          height: 15,
        ),
        NameWidget(),
        SizedBox(
          height: 10,
        ),
        JobDescription(),
        SizedBox(
          height: 50,
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
