import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/strings.dart';

class DownloadResumeButton extends StatelessWidget {
  DownloadResumeButton({super.key});

  final Uri url = Uri.parse(AppStrings.resumeDownload);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: IconButton(
        icon: Icon(
          Icons.download,
          color: Colors.white,
          size: 7.w,
        ),
        onPressed: () => launchUrl(url),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.purpleAccent[200]),
          shadowColor: WidgetStateProperty.all(Colors.purple),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
