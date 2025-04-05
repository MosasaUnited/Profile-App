import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/constants/images.dart';
import 'package:profile_app/core/widgets/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  Future<void> _launchPlayStore() async {
    final Uri url = Uri.parse(
        'https://play.google.com/store/apps/details?id=com.cdws.eco_monitoring');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const TitleText(
            prefix: 'CDWS ECO',
            title: ' Monitoring',
          ),
          SizedBox(
            height: 15.h,
          ),
          Image.asset(
            AppImages.cdwsMockups,
          ),
          SizedBox(
            height: 10.h,
          ),
          IconButton(
            icon: Image.asset(
              AppImages.playstoreImage,
              height: 250.h,
            ),
            onPressed: _launchPlayStore,
          ),
        ],
      ),
    );
  }
}
