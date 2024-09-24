import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/genre.dart';
import '../repositories/movies_repository.dart';

class GetGenres extends UsecaseWithoutParams<List<GenreEntity>> {
  final MoviesRepository _repository;

  GetGenres(this._repository);

  @override
  ResultFuture<List<GenreEntity>> call() {
    return _repository.getGenres();
  }
}
