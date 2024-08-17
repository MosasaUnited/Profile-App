import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/images.dart';
import '../../data/models/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text('Check on Github',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              icon: AppImages.githubIcon,
            )
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: Text(
            'Read More>>',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 3.sp,
            ),
          ),
        )
      ],
    );
  }
}
