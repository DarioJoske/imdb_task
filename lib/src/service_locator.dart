import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'api_client.dart';
import 'features/favourites/data/datasources/local_favourites_data_source.dart';
import 'features/favourites/data/repositories/favourites_repository_impl.dart';
import 'features/favourites/domain/repositories/favourites_repository.dart';
import 'features/favourites/domain/usecases/add_favourite.dart';
import 'features/favourites/domain/usecases/get_favourites.dart';
import 'features/favourites/domain/usecases/remove_favourite.dart';
import 'features/favourites/presentation/bloc/favourites_bloc.dart';
import 'features/movies/data/data_sources/local_movies_data_source.dart';
import 'features/movies/data/data_sources/remote_movies_data_source.dart';
import 'features/movies/data/repositories/movies_repository_impl.dart';
import 'features/movies/domain/repositories/movies_repository.dart';
import 'features/movies/domain/usecases/get_genres.dart';
import 'features/movies/domain/usecases/get_movies.dart';
import 'features/movies/presentation/bloc/data_connection/data_connection_bloc.dart';
import 'features/movies/presentation/bloc/genres/genres_bloc.dart';
import 'features/movies/presentation/bloc/movies/movies_bloc.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static initProviders() {
    //

    // Register MoviesBloc, GenresBloc, DataConnectionBloc, FavouritesBloc
    getIt.registerFactory(() => MoviesBloc(
          getIt<GetMovies>(),
        ));
    getIt.registerFactory(() => GenresBloc(
          getIt<GetGenres>(),
        ));
    getIt.registerFactory(() => DataConnectionBloc(
          getIt<InternetConnection>(),
        ));
    getIt.registerFactory(() => FavouritesBloc(
          getIt<AddFavourite>(),
          getIt<GetFavourites>(),
          getIt<RemoveFavourite>(),
        ));

    // Register the movies, genres and favourites use cases
    getIt.registerLazySingleton(() => GetMovies(getIt<MoviesRepository>()));
    getIt.registerLazySingleton(() => GetGenres(getIt<MoviesRepository>()));

    getIt.registerLazySingleton(() => AddFavourite(getIt<FavouritesRepository>()));
    getIt.registerLazySingleton(() => GetFavourites(getIt<FavouritesRepository>()));
    getIt.registerLazySingleton(() => RemoveFavourite(getIt<FavouritesRepository>()));

    // Register movies and favourites repositories
    getIt.registerLazySingleton<MoviesRepository>(() => MoviesRepositoryImpl(
          getIt<RemoteMoviesDataSource>(),
          getIt<LocalMoviesDataSource>(),
          getIt<InternetConnection>(),
        ));

    getIt.registerLazySingleton<FavouritesRepository>(() => FavouritesRepositoryImpl(
          getIt<LocalFavouritesDataSource>(),
        ));

    // Register the data sources
    getIt.registerLazySingleton<RemoteMoviesDataSource>(() => RemoteMoviesDataSoureceImpl(getIt<ApiClient>()));
    getIt.registerLazySingleton<LocalMoviesDataSource>(() => LocalMoviesDataSourceImpl(getIt<Box>()));

    getIt.registerLazySingleton<LocalFavouritesDataSource>(() => LocalFavouritesDataSourceImpl(
          getIt<Box>(),
        ));

    // Registering the ApiClient as a singleton
    getIt.registerLazySingleton<ApiClient>(() => ApiClient());
    getIt.registerLazySingleton<InternetConnection>(() => InternetConnection());

    // Registering the Hive box
    getIt.registerLazySingleton<Box>(() => Hive.box());
  }
}
