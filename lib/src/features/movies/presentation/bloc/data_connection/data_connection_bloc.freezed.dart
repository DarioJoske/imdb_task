// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataConnectionEvent {
  InternetStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetStatus status) connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InternetStatus status)? connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetStatus status)? connectionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionChanged value) connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionChanged value)? connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionChanged value)? connectionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataConnectionEventCopyWith<DataConnectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataConnectionEventCopyWith<$Res> {
  factory $DataConnectionEventCopyWith(
          DataConnectionEvent value, $Res Function(DataConnectionEvent) then) =
      _$DataConnectionEventCopyWithImpl<$Res, DataConnectionEvent>;
  @useResult
  $Res call({InternetStatus status});
}

/// @nodoc
class _$DataConnectionEventCopyWithImpl<$Res, $Val extends DataConnectionEvent>
    implements $DataConnectionEventCopyWith<$Res> {
  _$DataConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionChangedImplCopyWith<$Res>
    implements $DataConnectionEventCopyWith<$Res> {
  factory _$$ConnectionChangedImplCopyWith(_$ConnectionChangedImpl value,
          $Res Function(_$ConnectionChangedImpl) then) =
      __$$ConnectionChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InternetStatus status});
}

/// @nodoc
class __$$ConnectionChangedImplCopyWithImpl<$Res>
    extends _$DataConnectionEventCopyWithImpl<$Res, _$ConnectionChangedImpl>
    implements _$$ConnectionChangedImplCopyWith<$Res> {
  __$$ConnectionChangedImplCopyWithImpl(_$ConnectionChangedImpl _value,
      $Res Function(_$ConnectionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ConnectionChangedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus,
    ));
  }
}

/// @nodoc

class _$ConnectionChangedImpl implements _ConnectionChanged {
  const _$ConnectionChangedImpl({required this.status});

  @override
  final InternetStatus status;

  @override
  String toString() {
    return 'DataConnectionEvent.connectionChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChangedImplCopyWith<_$ConnectionChangedImpl> get copyWith =>
      __$$ConnectionChangedImplCopyWithImpl<_$ConnectionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetStatus status) connectionChanged,
  }) {
    return connectionChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InternetStatus status)? connectionChanged,
  }) {
    return connectionChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetStatus status)? connectionChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionChanged value) connectionChanged,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionChanged value)? connectionChanged,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionChanged value)? connectionChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectionChanged implements DataConnectionEvent {
  const factory _ConnectionChanged({required final InternetStatus status}) =
      _$ConnectionChangedImpl;

  @override
  InternetStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionChangedImplCopyWith<_$ConnectionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataConnectionState {
  InternetStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataConnectionStateCopyWith<DataConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataConnectionStateCopyWith<$Res> {
  factory $DataConnectionStateCopyWith(
          DataConnectionState value, $Res Function(DataConnectionState) then) =
      _$DataConnectionStateCopyWithImpl<$Res, DataConnectionState>;
  @useResult
  $Res call({InternetStatus status});
}

/// @nodoc
class _$DataConnectionStateCopyWithImpl<$Res, $Val extends DataConnectionState>
    implements $DataConnectionStateCopyWith<$Res> {
  _$DataConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataConnectionStateImplCopyWith<$Res>
    implements $DataConnectionStateCopyWith<$Res> {
  factory _$$DataConnectionStateImplCopyWith(_$DataConnectionStateImpl value,
          $Res Function(_$DataConnectionStateImpl) then) =
      __$$DataConnectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InternetStatus status});
}

/// @nodoc
class __$$DataConnectionStateImplCopyWithImpl<$Res>
    extends _$DataConnectionStateCopyWithImpl<$Res, _$DataConnectionStateImpl>
    implements _$$DataConnectionStateImplCopyWith<$Res> {
  __$$DataConnectionStateImplCopyWithImpl(_$DataConnectionStateImpl _value,
      $Res Function(_$DataConnectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$DataConnectionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus,
    ));
  }
}

/// @nodoc

class _$DataConnectionStateImpl implements _DataConnectionState {
  const _$DataConnectionStateImpl({required this.status});

  @override
  final InternetStatus status;

  @override
  String toString() {
    return 'DataConnectionState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataConnectionStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataConnectionStateImplCopyWith<_$DataConnectionStateImpl> get copyWith =>
      __$$DataConnectionStateImplCopyWithImpl<_$DataConnectionStateImpl>(
          this, _$identity);
}

abstract class _DataConnectionState implements DataConnectionState {
  const factory _DataConnectionState({required final InternetStatus status}) =
      _$DataConnectionStateImpl;

  @override
  InternetStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$DataConnectionStateImplCopyWith<_$DataConnectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
