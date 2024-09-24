import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/movie_list.dart';
import '../repositories/movies_repository.dart';

class GetMovies extends UsecaseWithParams<MovieListEntity, GetMoviesParams> {
  final MoviesRepository _repository;

  GetMovies(this._repository);

  @override
  ResultFuture<MovieListEntity> call(GetMoviesParams params) {
    return _repository.getMovies(page: params.page);
  }
}

class GetMoviesParams {
  final int page;

  GetMoviesParams(this.page);
}
