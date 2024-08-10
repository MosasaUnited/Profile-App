import 'package:flutter/material.dart';
import 'package:profile_app/core/widgets/segmented_buttons.dart';
import 'package:profile_app/features/home/presentation/widgets/lottie_file.dart';

class AppViewBody extends StatelessWidget {
  const AppViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            AppBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  SegmentedButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
