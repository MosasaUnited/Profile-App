import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/core/widgets/loading_widget.dart';
import 'package:profile_app/features/main_screen/logic/cubit/main_screen_cubit.dart';

import '../widgets/segmented_buttons.dart';

class MainScreenViewBody extends StatelessWidget {
  const MainScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainScreenCubit(),
      child: BlocConsumer<MainScreenCubit, MainScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<MainScreenCubit>();
          if (state is MainScreenStateInitial) {
            return const Center(
              child: LoadingWidget(),
            );
          }

          return Scaffold(
            backgroundColor: Colors.black,
            extendBodyBehindAppBar: true,
            body: SingleChildScrollView(
              child: IndexedStack(
                index: cubit.currentIndex,
                children: const [
                  SegmentedButtons(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
