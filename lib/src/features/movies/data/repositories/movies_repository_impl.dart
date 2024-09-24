// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/repositories/movies_repository.dart';
import '../data_sources/local_movies_data_source.dart';
import '../data_sources/remote_movies_data_source.dart';
import '../models/genre.dart';
import '../models/movie_list.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  const MoviesRepositoryImpl(this._remoteMovieDataSource, this._localMoviesDataSource, this._internetConnection);

  final RemoteMoviesDataSource _remoteMovieDataSource;
  final LocalMoviesDataSource _localMoviesDataSource;
  final InternetConnection _internetConnection;

  @override
  ResultFuture<MovieListModel> getMovies({required int page}) async {
    if (!await _internetConnection.hasInternetAccess) {
      try {
        final result = await _localMoviesDataSource.getLocalMovies();
        return Right(result);
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.errorMessage, statusCode: e.statusCode));
      }
    } else {
      try {
        final result = await _remoteMovieDataSource.getMovies(page: page);
        await _localMoviesDataSource.cacheMovies(result);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.errorMessage, statusCode: e.statusCode));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.errorMessage, statusCode: e.statusCode));
      }
    }
  }

  @override
  ResultFuture<List<GenreModel>> getGenres() async {
    if (!await _internetConnection.hasInternetAccess) {
      try {
        final result = await _localMoviesDataSource.getLocalGenres();
        return Right(result);
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.errorMessage, statusCode: e.statusCode));
      }
    } else {
      try {
        final result = await _remoteMovieDataSource.getGenres();
        await _localMoviesDataSource.cacheGenres(result);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.errorMessage, statusCode: e.statusCode));
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.errorMessage, statusCode: e.statusCode));
      }
    }
  }
}
