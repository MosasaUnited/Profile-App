import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'download_resume_button.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  final String resume = 'assets/images/resume.jpg';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resume',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          DownloadResumeButton(),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: screenWidth * 0.8, // Adjust width based on screen
                child: InteractiveViewer(
                  minScale: 0.5, // Set minimum zoom level (optional)
                  maxScale: 2.0, // Set maximum zoom level (optional)
                  boundaryMargin: EdgeInsets.zero,
                  child: Image.asset(
                    resume,
                    fit: BoxFit.cover,
                  ), // Remove padding around image (optional)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
