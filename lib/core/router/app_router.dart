import 'package:go_router/go_router.dart';
import 'package:profile_app/features/main_screen/main_screen_view.dart';
import 'package:profile_app/features/home/presentation/home_profile.dart';
import 'package:profile_app/features/overview/presentation/overview_screen.dart';

import '../../features/home/presentation/widgets/resume.dart';
import '../../features/projects/presentation/projects_screen.dart';

abstract class AppRouter {
  static const kMainViewBody = '/';
  static const kHomeScreen = '/Home';
  static const kResume = '/resume';
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
        path: kResume,
        builder: (context, state) => const Resume(),
      ),
      GoRoute(
        path: kOverViewScreen,
        builder: (context, state) => const OverViewScreen(),
      ),
      GoRoute(
        path: kProjectScreen,
        builder: (context, state) => const ProjectsScreen(),
      ),
    ],
  );
}
