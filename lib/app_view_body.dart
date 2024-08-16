import 'package:flutter/material.dart';

import 'core/widgets/segmented_buttons.dart';
import 'features/home/presentation/widgets/lottie_file.dart';

class AppViewBody extends StatelessWidget {
  const AppViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
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
