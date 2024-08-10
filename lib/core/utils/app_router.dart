import 'package:go_router/go_router.dart';
import 'package:profile_app/app_view_body.dart';
import 'package:profile_app/features/home/presentation/home_profile.dart';

import '../../features/about/presentation/about_screen.dart';
import '../../features/home/presentation/widgets/resume.dart';
import '../../features/projects/presentation/projects_screen.dart';

abstract class AppRouter {
  static const kAppViewBody = '/';
  static const kHomeScreen = '/Home';
  static const kResume = '/resume';
  static const kAboutScreen = '/about';
  static const kProjectScreen = '/about';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kAppViewBody,
        builder: (context, state) => const AppViewBody(),
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
        path: kAboutScreen,
        builder: (context, state) => const AboutScreen(),
      ),
      GoRoute(
        path: kProjectScreen,
        builder: (context, state) => const ProjectsScreen(),
      ),
    ],
  );
}
