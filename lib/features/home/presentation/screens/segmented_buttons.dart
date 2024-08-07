// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:segmented_button_slide/segmented_button_slide.dart';
//
// class AboutListView extends StatefulWidget {
//   const AboutListView({Key? key}) : super(key: key);
//
//   @override
//   State<AboutListView> createState() => _AboutListViewState();
// }
//
// class _AboutListViewState extends State<AboutListView> {
//   int selectedOption = 0;
//
//   void toggleOption() {
//     setState(() {
//       selectedOption = (selectedOption + 1) % 3;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SegmentedButtonSlide(
//           selectedEntry: selectedOption,
//           onChange: (selected) => setState(() => selectedOption = selected),
//           entries: const [
//             SegmentedButtonSlideEntry(
//               label: "Home",
//             ),
//             SegmentedButtonSlideEntry(
//               label: "About",
//             ),
//             SegmentedButtonSlideEntry(
//               label: "Projects",
//             ),
//           ],
//           colors: const SegmentedButtonSlideColors(
//             barColor: Colors.white,
//             backgroundSelectedColor: Colors.white60,
//           ),
//           slideShadow: [
//             BoxShadow(
//               color: Colors.blue.withOpacity(1),
//               blurRadius: 2,
//               spreadRadius: 1,
//             )
//           ],
//           margin: const EdgeInsets.all(16),
//           height: 40,
//           padding: const EdgeInsets.all(16),
//           borderRadius: BorderRadius.circular(8),
//           selectedTextStyle: const TextStyle(
//             fontWeight: FontWeight.w700,
//             color: Colors.redAccent,
//           ),
//           unselectedTextStyle: const TextStyle(
//             fontWeight: FontWeight.w500,
//             color: Colors.black87,
//           ),
//           hoverTextStyle: const TextStyle(
//             color: Colors.orange,
//           ),
//         ),
//         SizedBox(height: 16.h), // Add spacing between buttons and text
//         Column(
//           children: [
//             if (selectedOption == 0)
//               const OverviewWidget()
//             else if (selectedOption == 1)
//               Text(
//                 'Class details go here',
//                 style: TextStyle(fontSize: 16.sp),
//               )
//             else
//               Text(
//                 'Community details go here',
//                 style: TextStyle(fontSize: 16.sp),
//               ),
//           ],
//         ),
//       ],
//     );
//   }
// }
