import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/constants/images.dart';
import 'package:profile_app/features/overview/logic/cubit/home_cubit.dart';
import 'package:profile_app/features/overview/logic/cubit/home_state.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return MouseRegion(
            onEnter: (_) => context.read<HomeCubit>().setHover(true),
            onExit: (_) => context.read<HomeCubit>().setHover(false),
            child: Opacity(
              opacity: .82,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        offset: const Offset(-2, 0),
                        blurRadius: state.isHoverd ? 20 : 10,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: state.isHoverd ? 20 : 10,
                      ),
                    ]),
                child: CircleAvatar(
                  backgroundImage: AppImages.profileImage,
                  radius: 100.r,
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.amber,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
