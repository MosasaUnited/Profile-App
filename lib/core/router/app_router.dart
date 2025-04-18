import 'package:go_router/go_router.dart';
import 'package:profile_app/features/main_screen/main_screen_view.dart';
import 'package:profile_app/features/overview/presentation/home_profile.dart';
import 'package:profile_app/features/reviews/presentation/reviews_screen.dart';
import '../../features/projects/presentation/projects_screen.dart';

abstract class AppRouter {
  static const kMainViewBody = '/';
  static const kHomeScreen = '/Home';
  static const kOverViewScreen = '/overView';
  static const kProjectScreen = '/projects';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMainViewBody,
        builder: (context, state) => const MainScreenView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeProfile(),
      ),
      GoRoute(
        path: kOverViewScreen,
        builder: (context, state) => const ReviewsScreen(),
      ),
      GoRoute(
        path: kProjectScreen,
        builder: (context, state) => const ProjectsScreen(),
      ),
    ],
  );
}
