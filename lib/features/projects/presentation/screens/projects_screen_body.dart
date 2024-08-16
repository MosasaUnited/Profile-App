import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/title_text.dart';
import '../widgets/projects_grid.dart';

class ProjectsScreenBody extends StatelessWidget {
  const ProjectsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(
          prefix: 'Latest',
          title: 'Projects',
        ),
        SizedBox(
          height: 50.h,
        ),
        const ProjectGrid(),
      ],
    );
  }
}
