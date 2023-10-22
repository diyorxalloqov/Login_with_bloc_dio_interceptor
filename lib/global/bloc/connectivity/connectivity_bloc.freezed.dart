// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool isConnected) changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnection,
    TResult? Function(bool isConnected)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool isConnected)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_ChangeStatus value) changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_ChangeStatus value)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckConnectionImplCopyWith<$Res> {
  factory _$$CheckConnectionImplCopyWith(_$CheckConnectionImpl value,
          $Res Function(_$CheckConnectionImpl) then) =
      __$$CheckConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckConnectionImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$CheckConnectionImpl>
    implements _$$CheckConnectionImplCopyWith<$Res> {
  __$$CheckConnectionImplCopyWithImpl(
      _$CheckConnectionImpl _value, $Res Function(_$CheckConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckConnectionImpl implements _CheckConnection {
  const _$CheckConnectionImpl();

  @override
  String toString() {
    return 'ConnectivityEvent.checkConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool isConnected) changeStatus,
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnection,
    TResult? Function(bool isConnected)? changeStatus,
  }) {
    return checkConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool isConnected)? changeStatus,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_ChangeStatus value) changeStatus,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_ChangeStatus value)? changeStatus,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection implements ConnectivityEvent {
  const factory _CheckConnection() = _$CheckConnectionImpl;
}

/// @nodoc
abstract class _$$ChangeStatusImplCopyWith<$Res> {
  factory _$$ChangeStatusImplCopyWith(
          _$ChangeStatusImpl value, $Res Function(_$ChangeStatusImpl) then) =
      __$$ChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ChangeStatusImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$ChangeStatusImpl>
    implements _$$ChangeStatusImplCopyWith<$Res> {
  __$$ChangeStatusImplCopyWithImpl(
      _$ChangeStatusImpl _value, $Res Function(_$ChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ChangeStatusImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeStatusImpl implements _ChangeStatus {
  const _$ChangeStatusImpl({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ConnectivityEvent.changeStatus(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStatusImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      __$$ChangeStatusImplCopyWithImpl<_$ChangeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool isConnected) changeStatus,
  }) {
    return changeStatus(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnection,
    TResult? Function(bool isConnected)? changeStatus,
  }) {
    return changeStatus?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool isConnected)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_ChangeStatus value) changeStatus,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_ChangeStatus value)? changeStatus,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeStatus implements ConnectivityEvent {
  const factory _ChangeStatus({required final bool isConnected}) =
      _$ChangeStatusImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityState {
  bool get isConnected => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call({bool isConnected, ActionStatus status});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectivityStateImplCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$ConnectivityStateImplCopyWith(_$ConnectivityStateImpl value,
          $Res Function(_$ConnectivityStateImpl) then) =
      __$$ConnectivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected, ActionStatus status});
}

/// @nodoc
class __$$ConnectivityStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityStateImpl>
    implements _$$ConnectivityStateImplCopyWith<$Res> {
  __$$ConnectivityStateImplCopyWithImpl(_$ConnectivityStateImpl _value,
      $Res Function(_$ConnectivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? status = freezed,
  }) {
    return _then(_$ConnectivityStateImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ));
  }
}

/// @nodoc

class _$ConnectivityStateImpl implements _ConnectivityState {
  const _$ConnectivityStateImpl(
      {this.isConnected = false, this.status = ActionStatus.pure});

  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final ActionStatus status;

  @override
  String toString() {
    return 'ConnectivityState(isConnected: $isConnected, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityStateImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isConnected, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityStateImplCopyWith<_$ConnectivityStateImpl> get copyWith =>
      __$$ConnectivityStateImplCopyWithImpl<_$ConnectivityStateImpl>(
          this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState(
      {final bool isConnected,
      final ActionStatus status}) = _$ConnectivityStateImpl;

  @override
  bool get isConnected;
  @override
  ActionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ConnectivityStateImplCopyWith<_$ConnectivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
