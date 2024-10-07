import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/projects/presentation/widgets/project_link.dart';

import '../../data/models/project_model.dart';
import '../../data/view/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              projectList[index].name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
          Responsive.isMobile(context)
              ? SizedBox(
                  height: 20.h / 2,
                )
              : SizedBox(
                  height: 20.h,
                ),
          Text(
            projectList[index].description,
            style: const TextStyle(color: Colors.grey, height: 1.5),
            maxLines: size.width > 700 && size.width < 750
                ? 3
                : size.width < 470
                    ? 2
                    : size.width > 600 && size.width < 700
                        ? 6
                        : size.width > 900 && size.width < 1060
                            ? 6
                            : 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          ProjectLinks(
            index: index,
          ),
          SizedBox(
            height: 20.0.h / 2,
          ),
        ],
      ),
    );
  }
}
