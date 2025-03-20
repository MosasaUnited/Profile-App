import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/strings.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.myName,
      style: GoogleFonts.dancingScript().copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
