import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadResumeButton extends StatelessWidget {
  DownloadResumeButton({super.key});

  final Uri url = Uri.parse(AppStrings.resumeDownload);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 35.h,
        width: 37.w,
        child: ElevatedButton(
          onPressed: () => launchUrl(url),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.purpleAccent),
            shape: WidgetStateProperty.all(const LinearBorder()),
          ),
          child: Row(
            children: [
              const Text(
                'Download In PDF',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              const Icon(Icons.download_outlined, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
