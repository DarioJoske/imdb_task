// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesState {
  FavouritesStatus get status => throw _privateConstructorUsedError;
  List<MovieEntity> get movies => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call(
      {FavouritesStatus status,
      List<MovieEntity> movies,
      String? errorMessage});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavouritesStatus,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesStateImplCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$FavouritesStateImplCopyWith(_$FavouritesStateImpl value,
          $Res Function(_$FavouritesStateImpl) then) =
      __$$FavouritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FavouritesStatus status,
      List<MovieEntity> movies,
      String? errorMessage});
}

/// @nodoc
class __$$FavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesStateImpl>
    implements _$$FavouritesStateImplCopyWith<$Res> {
  __$$FavouritesStateImplCopyWithImpl(
      _$FavouritesStateImpl _value, $Res Function(_$FavouritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? movies = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FavouritesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavouritesStatus,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FavouritesStateImpl implements _FavouritesState {
  const _$FavouritesStateImpl(
      {required this.status,
      required final List<MovieEntity> movies,
      this.errorMessage})
      : _movies = movies;

  @override
  final FavouritesStatus status;
  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FavouritesState(status: $status, movies: $movies, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_movies), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      __$$FavouritesStateImplCopyWithImpl<_$FavouritesStateImpl>(
          this, _$identity);
}

abstract class _FavouritesState implements FavouritesState {
  const factory _FavouritesState(
      {required final FavouritesStatus status,
      required final List<MovieEntity> movies,
      final String? errorMessage}) = _$FavouritesStateImpl;

  @override
  FavouritesStatus get status;
  @override
  List<MovieEntity> get movies;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavourites,
    required TResult Function(MovieEntity movie) addFavourite,
    required TResult Function(int movieId) removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavourites,
    TResult? Function(MovieEntity movie)? addFavourite,
    TResult? Function(int movieId)? removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavourites,
    TResult Function(MovieEntity movie)? addFavourite,
    TResult Function(int movieId)? removeFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavourites value) loadFavourites,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavourites value)? loadFavourites,
    TResult? Function(_AddFavourite value)? addFavourite,
    TResult? Function(_RemoveFavourite value)? removeFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavourites value)? loadFavourites,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFavouritesImplCopyWith<$Res> {
  factory _$$LoadFavouritesImplCopyWith(_$LoadFavouritesImpl value,
          $Res Function(_$LoadFavouritesImpl) then) =
      __$$LoadFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavouritesImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$LoadFavouritesImpl>
    implements _$$LoadFavouritesImplCopyWith<$Res> {
  __$$LoadFavouritesImplCopyWithImpl(
      _$LoadFavouritesImpl _value, $Res Function(_$LoadFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavouritesImpl implements _LoadFavourites {
  const _$LoadFavouritesImpl();

  @override
  String toString() {
    return 'FavouritesEvent.loadFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavourites,
    required TResult Function(MovieEntity movie) addFavourite,
    required TResult Function(int movieId) removeFavourite,
  }) {
    return loadFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavourites,
    TResult? Function(MovieEntity movie)? addFavourite,
    TResult? Function(int movieId)? removeFavourite,
  }) {
    return loadFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavourites,
    TResult Function(MovieEntity movie)? addFavourite,
    TResult Function(int movieId)? removeFavourite,
    required TResult orElse(),
  }) {
    if (loadFavourites != null) {
      return loadFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavourites value) loadFavourites,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return loadFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavourites value)? loadFavourites,
    TResult? Function(_AddFavourite value)? addFavourite,
    TResult? Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return loadFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavourites value)? loadFavourites,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (loadFavourites != null) {
      return loadFavourites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavourites implements FavouritesEvent {
  const factory _LoadFavourites() = _$LoadFavouritesImpl;
}

/// @nodoc
abstract class _$$AddFavouriteImplCopyWith<$Res> {
  factory _$$AddFavouriteImplCopyWith(
          _$AddFavouriteImpl value, $Res Function(_$AddFavouriteImpl) then) =
      __$$AddFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieEntity movie});
}

/// @nodoc
class __$$AddFavouriteImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$AddFavouriteImpl>
    implements _$$AddFavouriteImplCopyWith<$Res> {
  __$$AddFavouriteImplCopyWithImpl(
      _$AddFavouriteImpl _value, $Res Function(_$AddFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$AddFavouriteImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieEntity,
    ));
  }
}

/// @nodoc

class _$AddFavouriteImpl implements _AddFavourite {
  const _$AddFavouriteImpl({required this.movie});

  @override
  final MovieEntity movie;

  @override
  String toString() {
    return 'FavouritesEvent.addFavourite(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteImplCopyWith<_$AddFavouriteImpl> get copyWith =>
      __$$AddFavouriteImplCopyWithImpl<_$AddFavouriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavourites,
    required TResult Function(MovieEntity movie) addFavourite,
    required TResult Function(int movieId) removeFavourite,
  }) {
    return addFavourite(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavourites,
    TResult? Function(MovieEntity movie)? addFavourite,
    TResult? Function(int movieId)? removeFavourite,
  }) {
    return addFavourite?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavourites,
    TResult Function(MovieEntity movie)? addFavourite,
    TResult Function(int movieId)? removeFavourite,
    required TResult orElse(),
  }) {
    if (addFavourite != null) {
      return addFavourite(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavourites value) loadFavourites,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return addFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavourites value)? loadFavourites,
    TResult? Function(_AddFavourite value)? addFavourite,
    TResult? Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return addFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavourites value)? loadFavourites,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (addFavourite != null) {
      return addFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddFavourite implements FavouritesEvent {
  const factory _AddFavourite({required final MovieEntity movie}) =
      _$AddFavouriteImpl;

  MovieEntity get movie;
  @JsonKey(ignore: true)
  _$$AddFavouriteImplCopyWith<_$AddFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavouriteImplCopyWith<$Res> {
  factory _$$RemoveFavouriteImplCopyWith(_$RemoveFavouriteImpl value,
          $Res Function(_$RemoveFavouriteImpl) then) =
      __$$RemoveFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$RemoveFavouriteImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$RemoveFavouriteImpl>
    implements _$$RemoveFavouriteImplCopyWith<$Res> {
  __$$RemoveFavouriteImplCopyWithImpl(
      _$RemoveFavouriteImpl _value, $Res Function(_$RemoveFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$RemoveFavouriteImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFavouriteImpl implements _RemoveFavourite {
  const _$RemoveFavouriteImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'FavouritesEvent.removeFavourite(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavouriteImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavouriteImplCopyWith<_$RemoveFavouriteImpl> get copyWith =>
      __$$RemoveFavouriteImplCopyWithImpl<_$RemoveFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavourites,
    required TResult Function(MovieEntity movie) addFavourite,
    required TResult Function(int movieId) removeFavourite,
  }) {
    return removeFavourite(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavourites,
    TResult? Function(MovieEntity movie)? addFavourite,
    TResult? Function(int movieId)? removeFavourite,
  }) {
    return removeFavourite?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavourites,
    TResult Function(MovieEntity movie)? addFavourite,
    TResult Function(int movieId)? removeFavourite,
    required TResult orElse(),
  }) {
    if (removeFavourite != null) {
      return removeFavourite(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavourites value) loadFavourites,
    required TResult Function(_AddFavourite value) addFavourite,
    required TResult Function(_RemoveFavourite value) removeFavourite,
  }) {
    return removeFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavourites value)? loadFavourites,
    TResult? Function(_AddFavourite value)? addFavourite,
    TResult? Function(_RemoveFavourite value)? removeFavourite,
  }) {
    return removeFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavourites value)? loadFavourites,
    TResult Function(_AddFavourite value)? addFavourite,
    TResult Function(_RemoveFavourite value)? removeFavourite,
    required TResult orElse(),
  }) {
    if (removeFavourite != null) {
      return removeFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavourite implements FavouritesEvent {
  const factory _RemoveFavourite({required final int movieId}) =
      _$RemoveFavouriteImpl;

  int get movieId;
  @JsonKey(ignore: true)
  _$$RemoveFavouriteImplCopyWith<_$RemoveFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
