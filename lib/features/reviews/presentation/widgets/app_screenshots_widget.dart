import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreenshotsWidget extends StatelessWidget {
  const AppScreenshotsWidget({super.key});

  final List<Map<String, String>> screenshots = const [
    {
      'image': 'assets/images/screenshot1.jpg',
      'title': 'Home Screen',
      'description': 'Beautiful dashboard with personalized recommendations',
    },
    {
      'image': 'assets/images/screenshot2.jpg',
      'title': 'Virtual Try-On',
      'description': 'Try makeup products virtually with our AR technology',
    },
    {
      'image': 'assets/images/screenshot3.jpg',
      'title': 'Skin Analysis',
      'description': 'Advanced AI skin analysis with customized routine suggestions',
    },
    {
      'image': 'assets/images/screenshot4.jpg',
      'title': 'Product Finder',
      'description': 'Find the perfect products for your skin type and concerns',
    },
    {
      'image': 'assets/images/screenshot5.jpg',
      'title': 'Beauty Community',
      'description': 'Connect with other beauty enthusiasts and share tips',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'App Showcase',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Beautiful screenshots of our app in action',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 30.h),
        SizedBox(
          height: 500.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: screenshots.length,
            itemBuilder: (context, index) {
              return Container(
                width: 280.w,
                margin: EdgeInsets.only(right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 420.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          screenshots[index]['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      screenshots[index]['title']!,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      screenshots[index]['description']!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}