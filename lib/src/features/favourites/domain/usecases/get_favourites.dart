import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../movies/domain/entities/movie.dart';
import '../repositories/favourites_repository.dart';

class GetFavourites extends UsecaseWithoutParams<List<MovieEntity>> {
  final FavouritesRepository _repository;

  GetFavourites(this._repository);

  @override
  ResultFuture<List<MovieEntity>> call() {
    return _repository.getFavourites();
  }
}