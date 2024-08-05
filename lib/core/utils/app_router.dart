import 'package:go_router/go_router.dart';
import 'package:profile_app/home.dart';

import '../../features/home/widgets/resume.dart';

abstract class AppRouter {
  static const kHome = '/';
  static const kResume = '/resume';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeProfile(),
      ),
      GoRoute(
        path: kResume,
        builder: (context, state) => const Resume(),
      ),
    ],
  );
}
