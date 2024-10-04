import 'package:flutter/material.dart';
import 'package:profile_app/features/overview/presentation/screens/overview_details_screen.dart';
import 'package:profile_app/features/projects/data/view/responsive.dart';


class OverViewScreenBody extends StatelessWidget {
  const OverViewScreenBody({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: OverviewDetailsScreen(
      ),
      largeMobile: OverviewDetailsScreen(),
      mobile: OverviewDetailsScreen(),
      tablet: OverviewDetailsScreen(),
      extraLargeScreen: OverviewDetailsScreen(),
      
    );
    
  }
}
