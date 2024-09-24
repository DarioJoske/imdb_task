import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_router.dart';
import 'core/theme/q_theme.dart';
import 'features/favourites/presentation/bloc/favourites_bloc.dart';
import 'features/movies/presentation/bloc/data_connection/data_connection_bloc.dart';
import 'features/movies/presentation/bloc/genres/genres_bloc.dart';
import 'features/movies/presentation/bloc/movies/movies_bloc.dart';
import 'service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<MoviesBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<FavouritesBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<DataConnectionBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<GenresBloc>(),
        ),
      ],
      child: MaterialApp.router(
        restorationScopeId: 'app',
        theme: QTheme.qThemeDark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
