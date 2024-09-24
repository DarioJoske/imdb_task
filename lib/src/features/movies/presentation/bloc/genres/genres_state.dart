part of 'genres_bloc.dart';

enum GenresStatus { initial, loading, loaded, error }

@freezed
class GenresState with _$GenresState {
  const factory GenresState({
    required GenresStatus status,
    required List<GenreEntity>? genres,
    String? errorMessage,
  }) = _GenresState;

  factory GenresState.initial() => const GenresState(
        status: GenresStatus.initial,
        genres: [],
        errorMessage: '',
      );
}
