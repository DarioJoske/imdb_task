import '../../../../api_client.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/genre.dart';
import '../models/movie_list.dart';

abstract class RemoteMoviesDataSource {
  const RemoteMoviesDataSource(ApiClient apiClient);

  Future<MovieListModel> getMovies({required int page});
  Future<List<GenreModel>> getGenres();
}

class RemoteMoviesDataSoureceImpl implements RemoteMoviesDataSource {
  const RemoteMoviesDataSoureceImpl(this._client);
  final ApiClient _client;

  @override
  Future<MovieListModel> getMovies({required int page}) async {
    try {
      final response = await _client.dio.get('https://api.themoviedb.org/3/movie/popular?language=en_US&page=$page');

      return MovieListModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(message: e.toString(), statusCode: '500');
    }
  }

  @override
  Future<List<GenreModel>> getGenres() async {
    try {
      final response = await _client.dio.get('https://api.themoviedb.org/3/genre/movie/list');

      return List<GenreModel>.from(response.data['genres'].map((x) => GenreModel.fromJson(x)));
    } catch (e) {
      throw ServerException(message: e.toString(), statusCode: '500');
    }
  }
}
