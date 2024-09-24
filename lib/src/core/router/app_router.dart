import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_scaffold.dart';
import '../../features/favourites/presentation/view/favourites_page.dart';
import '../../features/movie_details/presentation/view/movie_details_page.dart';
import '../../features/movies/domain/entities/movie.dart';
import '../../features/movies/presentation/view/home_page.dart';
import 'routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.home,
    navigatorKey: rootNavigatorKey,
    routes: [
      ShellRoute(
        routes: [
          GoRoute(
            path: Routes.home,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: HomePage(),
            ),
          ),
          GoRoute(
            path: Routes.favorites,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: FavouritesPage(),
            ),
          )
        ],
        builder: (context, state, child) {
          return AppScaffold(
            child: child,
          );
        },
      ),
      GoRoute(
        path: Routes.movieDetails,
        pageBuilder: (context, state) {
          MovieEntity movie = state.extra as MovieEntity;
          return CustomTransitionPage(
            child: MovieDetailsPage(
              movie: movie,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      )
    ],
  );
}
