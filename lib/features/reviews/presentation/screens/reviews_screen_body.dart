import 'package:flutter/material.dart';
import 'package:profile_app/features/reviews/presentation/screens/reviews_details_screen.dart';
import 'package:profile_app/features/projects/data/view/responsive.dart';

class ReviewsScreenBody extends StatelessWidget {
  const ReviewsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: ReviewsDetailsScreen(),
      largeMobile: ReviewsDetailsScreen(),
      mobile: ReviewsDetailsScreen(),
      tablet: ReviewsDetailsScreen(),
      extraLargeScreen: ReviewsDetailsScreen(),
    );
  }
}
