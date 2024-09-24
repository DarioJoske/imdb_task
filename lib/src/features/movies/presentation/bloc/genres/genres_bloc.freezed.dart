// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGenres,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGenres value) getGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGenres value)? getGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresEventCopyWith<$Res> {
  factory $GenresEventCopyWith(
          GenresEvent value, $Res Function(GenresEvent) then) =
      _$GenresEventCopyWithImpl<$Res, GenresEvent>;
}

/// @nodoc
class _$GenresEventCopyWithImpl<$Res, $Val extends GenresEvent>
    implements $GenresEventCopyWith<$Res> {
  _$GenresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGenresImplCopyWith<$Res> {
  factory _$$GetGenresImplCopyWith(
          _$GetGenresImpl value, $Res Function(_$GetGenresImpl) then) =
      __$$GetGenresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGenresImplCopyWithImpl<$Res>
    extends _$GenresEventCopyWithImpl<$Res, _$GetGenresImpl>
    implements _$$GetGenresImplCopyWith<$Res> {
  __$$GetGenresImplCopyWithImpl(
      _$GetGenresImpl _value, $Res Function(_$GetGenresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGenresImpl implements _GetGenres {
  const _$GetGenresImpl();

  @override
  String toString() {
    return 'GenresEvent.getGenres()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGenresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGenres,
  }) {
    return getGenres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGenres,
  }) {
    return getGenres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGenres,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGenres value) getGenres,
  }) {
    return getGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGenres value)? getGenres,
  }) {
    return getGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres(this);
    }
    return orElse();
  }
}

abstract class _GetGenres implements GenresEvent {
  const factory _GetGenres() = _$GetGenresImpl;
}

/// @nodoc
mixin _$GenresState {
  GenresStatus get status => throw _privateConstructorUsedError;
  List<GenreEntity>? get genres => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenresStateCopyWith<GenresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res, GenresState>;
  @useResult
  $Res call(
      {GenresStatus status, List<GenreEntity>? genres, String? errorMessage});
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res, $Val extends GenresState>
    implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? genres = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GenresStatus,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresStateImplCopyWith<$Res>
    implements $GenresStateCopyWith<$Res> {
  factory _$$GenresStateImplCopyWith(
          _$GenresStateImpl value, $Res Function(_$GenresStateImpl) then) =
      __$$GenresStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GenresStatus status, List<GenreEntity>? genres, String? errorMessage});
}

/// @nodoc
class __$$GenresStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresStateImpl>
    implements _$$GenresStateImplCopyWith<$Res> {
  __$$GenresStateImplCopyWithImpl(
      _$GenresStateImpl _value, $Res Function(_$GenresStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? genres = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$GenresStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GenresStatus,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GenresStateImpl implements _GenresState {
  const _$GenresStateImpl(
      {required this.status,
      required final List<GenreEntity>? genres,
      this.errorMessage})
      : _genres = genres;

  @override
  final GenresStatus status;
  final List<GenreEntity>? _genres;
  @override
  List<GenreEntity>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'GenresState(status: $status, genres: $genres, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_genres), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresStateImplCopyWith<_$GenresStateImpl> get copyWith =>
      __$$GenresStateImplCopyWithImpl<_$GenresStateImpl>(this, _$identity);
}

abstract class _GenresState implements GenresState {
  const factory _GenresState(
      {required final GenresStatus status,
      required final List<GenreEntity>? genres,
      final String? errorMessage}) = _$GenresStateImpl;

  @override
  GenresStatus get status;
  @override
  List<GenreEntity>? get genres;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$GenresStateImplCopyWith<_$GenresStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
