import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../movies/data/models/movie.dart';
import '../../../movies/domain/entities/movie.dart';
import '../../domain/repositories/favourites_repository.dart';
import '../datasources/local_favourites_data_source.dart';

class FavouritesRepositoryImpl implements FavouritesRepository {
  const FavouritesRepositoryImpl(this._localDataSource);
  final LocalFavouritesDataSource _localDataSource;

  @override
  ResultFuture<List<MovieModel>> getFavourites() async {
    try {
      final result = await _localDataSource.getFavourites();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<List<MovieModel>> removeFavourite({required int movieId}) async {
    try {
      final result = await _localDataSource.removeFavourite(movieId: movieId);
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString(), statusCode: 500));
    }
  }

  @override
  ResultFuture<List<MovieEntity>> addFavourite({required MovieEntity movie}) async {
    try {
      final result = await _localDataSource.addFavourite(movie: movie as MovieModel);
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString(), statusCode: 500));
    }
  }
}
