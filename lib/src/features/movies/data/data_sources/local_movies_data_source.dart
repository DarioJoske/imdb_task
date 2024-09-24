import 'package:hive/hive.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/genre.dart';
import '../models/movie_list.dart';

abstract class LocalMoviesDataSource {
  Future<MovieListModel> getLocalMovies();
  Future<List<GenreModel>> getLocalGenres();

  Future<void> cacheMovies(MovieListModel movies);
  Future<void> cacheGenres(List<GenreModel> genres);
}

class LocalMoviesDataSourceImpl implements LocalMoviesDataSource {
  const LocalMoviesDataSourceImpl(this._box);
  final Box _box;

  @override
  Future<void> cacheGenres(List<GenreModel> genres) async {
    try {
      _box.delete('genres');
      final genresJson = genres.map((e) => e.toJson()).toList();
      _box.put('genres', genresJson);
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<void> cacheMovies(MovieListModel movies) async {
    try {
      _box.delete('movies');
      _box.put('movies', movies.toJson());
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<List<GenreModel>> getLocalGenres() async {
    try {
      final response = _box.get('genres');
      return GenreModel.fromJsonList(response);
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<MovieListModel> getLocalMovies() async {
    try {
      final response = _box.get(
        'movies',
      );

      return MovieListModel.fromJson(response);
    } catch (e) {
      throw CacheException(message: e.toString(), statusCode: 500);
    }
  }
}
