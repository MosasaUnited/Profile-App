import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';
import '../../../home/presentation/home_profile.dart';
import '../../../overview/presentation/overview_screen.dart';
import '../../../projects/presentation/projects_screen.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SegmentedButtonSlide(
          selectedEntry: selectedOption,
          onChange: (selected) => setState(
            () => selectedOption = selected,
          ),
          curve: Curves.easeInOut,
          entries: const [
            SegmentedButtonSlideEntry(
              icon: Icons.home,
              label: 'Over View',
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.record_voice_over,
              label: 'Reviews',
            ),
            SegmentedButtonSlideEntry(
              icon: Icons.workspace_premium,
              label: 'Projects',
            ),
          ],
          colors: const SegmentedButtonSlideColors(
            barColor: Colors.transparent,
            backgroundSelectedColor: Colors.transparent,
          ),
          margin: const EdgeInsets.all(16),
          height: 50.h,
          padding: const EdgeInsets.all(16),
          borderRadius: BorderRadius.circular(8),
          selectedTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 7.sp,
          ),
          unselectedTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 5.sp,
          ),
          hoverTextStyle: const TextStyle(
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 16.h), // Add spacing between buttons and text
        Column(
          children: [
            if (selectedOption == 0)
              const HomeProfile()
            else if (selectedOption == 1)
              const OverViewScreen()
            else
              const ProjectsScreen()
          ],
        ),
      ],
    );
  }
}
