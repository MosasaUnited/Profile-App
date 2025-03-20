import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_app/features/reviews/presentation/widgets/youtube_player_widget.dart';

class YoutubeReviewsWidget extends StatelessWidget {
  const YoutubeReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'See What Clients are saying about our App',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 250.h,
            child: YoutubePlayerWidget(),
          ),
        ],
      ),
    );
  }
}
