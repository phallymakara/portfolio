import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about/presentation/about_page.dart';
import 'package:portfolio/features/blog/presentation/blog_page.dart';
import 'package:portfolio/features/home/presentation/courses_page.dart';
import 'package:portfolio/features/home/presentation/home_page.dart';

class Routes {
  static const String home = '/';
  static const String skills = '/skills';
  static const String blog = '/blog';
  static const dynamic about = '/about';
}

class AppRoute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: HomePage(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              // Example: Fade transition
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: Duration(milliseconds: 500), // adjust as needed
          );
        },
      ),
      GoRoute(
        path: Routes.skills,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: CoursesPage(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              // Example: Fade transition
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: Duration(milliseconds: 500), // adjust as needed
          );
        },
      ),
      GoRoute(
        path: Routes.blog,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: BlogPage(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              // Example: Fade transition
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: Duration(milliseconds: 500), // adjust as needed
          );
        },
      ),
      GoRoute(
        path: Routes.about,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: AboutPage(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              // Example: Fade transition
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: Duration(milliseconds: 500), // adjust as needed
          );
        },
      ),
    ],
  );
}
