import 'package:hive/hive.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../movies/data/models/movie.dart';

abstract class LocalFavouritesDataSource {
  Future<List<MovieModel>> addFavourite({required MovieModel movie});
  Future<List<MovieModel>> removeFavourite({required int movieId});
  Future<List<MovieModel>> getFavourites();
}

class LocalFavouritesDataSourceImpl implements LocalFavouritesDataSource {
  const LocalFavouritesDataSourceImpl(this._favouritesBox);
  final Box _favouritesBox;

  @override
  Future<List<MovieModel>> addFavourite({required MovieModel movie}) async {
    try {
      _favouritesBox.put(movie.id.toString(), movie.toJson());

      return getFavourites();
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<List<MovieModel>> getFavourites() async {
    try {
      final List<MovieModel> favourites = [];
      for (var i = 0; i < _favouritesBox.length; i++) {
        if (_favouritesBox.keyAt(i) == null ||
            _favouritesBox.keyAt(i) == 'genres' ||
            _favouritesBox.keyAt(i) == 'movies') {
          continue;
        }
        final key = _favouritesBox.keyAt(i);
        final movie = await _favouritesBox.get(
          key!,
        );

        if (movie != null) {
          favourites.add(MovieModel.fromJson(movie));
        }
      }
      return favourites;
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<List<MovieModel>> removeFavourite({required int movieId}) async {
    try {
      _favouritesBox.delete(movieId.toString());

      return getFavourites();
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }
}
