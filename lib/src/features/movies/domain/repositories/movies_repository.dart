import '../../../../core/utils/typedefs.dart';
import '../../data/models/genre.dart';
import '../../data/models/movie_list.dart';

abstract class MoviesRepository {
  ResultFuture<MovieListModel> getMovies({required int page});
  ResultFuture<List<GenreModel>> getGenres();
}
