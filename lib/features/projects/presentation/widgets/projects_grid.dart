import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/projects/presentation/widgets/project_info.dart';

import '../../data/models/project_model.dart';
import '../../logic/cubit/projects_cubit.dart';
import '../../logic/cubit/projects_state.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  const ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsCubit>(
      create: (context) => ProjectsCubit(projectList.length),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: projectList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:crossAxisCount,
          childAspectRatio:ratio,  
        ),
        itemBuilder: (context, index) {
          return BlocBuilder<ProjectsCubit, ProjectsState>(
            builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0.h,
                  horizontal: 10.0.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(-2, 0),
                      blurRadius: state.hovers[index] ? 20 : 10,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: const Offset(2, 0),
                      blurRadius: state.hovers[index] ? 20 : 10,
                    ),
                  ],
                ),
                child: MouseRegion(
                  onEnter: (_) =>
                      context.read<ProjectsCubit>().setHover(index, true),
                  onExit: (_) =>
                      context.read<ProjectsCubit>().setHover(index, false),
                  child: ProjectStack(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
