import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/core/theme/colors.dart';
import 'package:profile_app/features/projects/data/models/project_model.dart';
import 'package:profile_app/features/projects/logic/cubit/projects_cubit.dart';
import 'package:profile_app/features/projects/logic/cubit/projects_state.dart';
import 'package:profile_app/features/projects/presentation/widgets/project_detail.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectStack extends StatelessWidget {
  const ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(),
      child: BlocBuilder<ProjectsCubit, ProjectsState>(
        builder: (context, state) {
          return InkWell(
            onHover: (value) {
              context.read<ProjectsCubit>().onHover(index, value);
            },
            onTap: () {
              launchUrl(Uri.parse(projectList[index].link));
              //launchUrl(Uri.parse(AppStrings.allRepositories));
              //ImageViewer(context, projectList[index].image);
            },
            borderRadius: BorderRadius.circular(30),
            child: AnimatedContainer(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColors.bgColor),
              duration: const Duration(milliseconds: 500),
              child: ProjectDetail(
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
