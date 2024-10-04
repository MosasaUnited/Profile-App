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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Check on Github',
                style: TextStyle(color: Colors.white, fontSize: 8.sp),
                overflow: TextOverflow.ellipsis,
            
                ),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              icon: AppImages.githubIcon,
            )
          ],
        ),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse(projectList[index].link));
          },
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                text: 'From',
                style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 8.sp,
            ),  
              ),
              TextSpan(text: ' Here ..',
              style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 8.sp,
            ),
            ),
              ],
          ),
          ),
        )
      ],
    );
  }
}
