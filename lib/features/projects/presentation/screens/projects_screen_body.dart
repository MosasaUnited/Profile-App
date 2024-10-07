import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/title_text.dart';
import '../../data/view/responsive.dart';
import '../widgets/projects_grid.dart';

class ProjectsScreenBody extends StatelessWidget {
  const ProjectsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            prefix: 'Latest',
            title: 'Projects',
          ),
          SizedBox(
            height: 50.h,
          ),
          const Responsive(
            desktop: ProjectGrid(
              crossAxisCount: 3,
            ),
            extraLargeScreen: ProjectGrid(
              crossAxisCount: 4,
            ),
            largeMobile: ProjectGrid(
              crossAxisCount: 1,
              ratio: 1.8,
            ),
            mobile: ProjectGrid(
              crossAxisCount: 1,
              ratio: 1.5,
            ),
            tablet: ProjectGrid(
              crossAxisCount: 2,
              ratio: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
