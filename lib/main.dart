import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'src/app.dart';
import 'src/features/favourites/presentation/bloc/favourites_bloc.dart';
import 'src/features/movies/presentation/bloc/data_connection/data_connection_bloc.dart';
import 'src/features/movies/presentation/bloc/genres/genres_bloc.dart';
import 'src/features/movies/presentation/bloc/movies/movies_bloc.dart';
import 'src/features/splash/splash_screen.dart';
import 'src/service_locator.dart';

void main() async {
  final done = Completer<void>();
  runApp(const SplashScreen());
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;
  await ServiceLocator.initProviders();

  Future.delayed(const Duration(seconds: 2), () {
    done.complete();
  });
  done.complete();

  runApp(MultiBlocProvider(
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
    child: const MyApp(),
  ));
}
