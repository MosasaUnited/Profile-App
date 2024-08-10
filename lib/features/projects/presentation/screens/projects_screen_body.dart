import 'package:flutter/material.dart';

class ProjectsScreenBody extends StatelessWidget {
  const ProjectsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(),
        SizedBox(
          height: 50.h,
        ),
        Expanded(child: ProjectsGrid())
      ],
    );
  }
}
