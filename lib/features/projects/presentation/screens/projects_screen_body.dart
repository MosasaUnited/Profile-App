import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/title_text.dart';

class ProjectsScreenBody extends StatelessWidget {
  const ProjectsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          title: 'Latest',
          prefix: 'Projects',
        ),
        SizedBox(
          height: 50.h,
        ),
        Expanded(child: ProjectsGrid())
      ],
    );
  }
}
