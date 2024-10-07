import 'package:flutter/material.dart';
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
            const Text(
              'Check on Github',
                style: TextStyle(color: Colors.amber, fontSize: 20,
                 overflow: TextOverflow.ellipsis,
                 ),
              
                ),

            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].link));
              },
              icon: AppImages.githubIcon,
            )
          ],
        ),
      ],
    );
  }
}
