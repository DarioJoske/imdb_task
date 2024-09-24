import '../../../../core/utils/typedefs.dart';
import '../../../movies/domain/entities/movie.dart';

abstract class FavouritesRepository {
  ResultFuture<List<MovieEntity>> addFavourite({required MovieEntity movie});
  ResultFuture<List<MovieEntity>> removeFavourite({required int movieId});
  ResultFuture<List<MovieEntity>> getFavourites();
}
