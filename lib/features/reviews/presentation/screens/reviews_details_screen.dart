import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/core/widgets/custom_divider.dart';
import 'package:profile_app/features/reviews/presentation/widgets/header_widget.dart';
import 'package:profile_app/features/reviews/presentation/widgets/screenshots_slider.dart';
import 'package:profile_app/features/reviews/presentation/widgets/youtube_reviews_widget.dart';

class ReviewsDetailsScreen extends StatelessWidget {
  const ReviewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              const HeaderWidget(),
              SizedBox(
                height: 20.h,
              ),
              const YoutubeReviewsWidget(),
              SizedBox(
                height: 60.h,
              ),
              const CustomDivider(),
              SizedBox(
                height: 60.h,
              ),
              const ScreenshotsSlider(),
              // SizedBox(
              //   height: 60.h,
              // ),
              // const CustomDivider(),
              // SizedBox(
              //   height: 60.h,
              // ),
              // const FacebookPostsWidget(),
              // SizedBox(
              //   height: 60.h,
              // ),
              // const CustomDivider(),
              // SizedBox(
              //   height: 60.h,
              // ),
              // const AppScreenshotsWidget(),
              // SizedBox(
              //   height: 60.h,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
