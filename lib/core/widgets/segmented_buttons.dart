import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/about/presentation/about_screen.dart';
import 'package:profile_app/features/projects/presentation/projects_screen.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

import '../../features/home/presentation/home_profile.dart';
import '../../features/home/presentation/widgets/lottie_file.dart';

class SegmentedButtons extends StatefulWidget {
  const SegmentedButtons({Key? key}) : super(key: key);

  @override
  State<SegmentedButtons> createState() => _SegmentedButtonsState();
}

class _SegmentedButtonsState extends State<SegmentedButtons> {
  int selectedOption = 0;

  void toggleOption() {
    setState(() {
      selectedOption = (selectedOption + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SegmentedButtonSlide(
          selectedEntry: selectedOption,
          onChange: (selected) => setState(() => selectedOption = selected),
          entries: const [
            SegmentedButtonSlideEntry(
              icon: Icons.hail_outlined,
              label: 'Home',
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.align_vertical_bottom_outlined,
              label: "About",
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.workspace_premium_outlined,
              label: "Projects",
            ),
          ],
          colors: const SegmentedButtonSlideColors(
            barColor: Colors.transparent,
            backgroundSelectedColor: Colors.transparent,
          ),
          slideShadow: [
            BoxShadow(
              color: Colors.purpleAccent.withOpacity(1),
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          margin: const EdgeInsets.all(16),
          height: 50.h,
          padding: const EdgeInsets.all(16),
          borderRadius: BorderRadius.circular(8),
          selectedTextStyle: const TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.amber,
          ),
          unselectedTextStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          hoverTextStyle: const TextStyle(
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 16.h), // Add spacing between buttons and text
        Stack(
          children: [
            const AppBackground(),
            Column(
              children: [
                if (selectedOption == 0)
                  const HomeProfile()
                else if (selectedOption == 1)
                  const AboutScreen()
                else
                  const ProjectsScreen()
              ],
            )
          ],
        ),
      ],
    );
  }
}
