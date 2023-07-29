// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactUpdateEvent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUpdateEventCopyWith<ContactUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUpdateEventCopyWith<$Res> {
  factory $ContactUpdateEventCopyWith(
          ContactUpdateEvent value, $Res Function(ContactUpdateEvent) then) =
      _$ContactUpdateEventCopyWithImpl<$Res, ContactUpdateEvent>;
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$ContactUpdateEventCopyWithImpl<$Res, $Val extends ContactUpdateEvent>
    implements $ContactUpdateEventCopyWith<$Res> {
  _$ContactUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactUpdateEventSaveCopyWith<$Res>
    implements $ContactUpdateEventCopyWith<$Res> {
  factory _$$_ContactUpdateEventSaveCopyWith(_$_ContactUpdateEventSave value,
          $Res Function(_$_ContactUpdateEventSave) then) =
      __$$_ContactUpdateEventSaveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$$_ContactUpdateEventSaveCopyWithImpl<$Res>
    extends _$ContactUpdateEventCopyWithImpl<$Res, _$_ContactUpdateEventSave>
    implements _$$_ContactUpdateEventSaveCopyWith<$Res> {
  __$$_ContactUpdateEventSaveCopyWithImpl(_$_ContactUpdateEventSave _value,
      $Res Function(_$_ContactUpdateEventSave) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_ContactUpdateEventSave(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactUpdateEventSave implements _ContactUpdateEventSave {
  const _$_ContactUpdateEventSave(
      {required this.id, required this.name, required this.email});

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ContactUpdateEvent.save(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUpdateEventSave &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactUpdateEventSaveCopyWith<_$_ContactUpdateEventSave> get copyWith =>
      __$$_ContactUpdateEventSaveCopyWithImpl<_$_ContactUpdateEventSave>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email) save,
  }) {
    return save(id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email)? save,
  }) {
    return save?.call(id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(id, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateEventSave implements ContactUpdateEvent {
  const factory _ContactUpdateEventSave(
      {required final int id,
      required final String name,
      required final String email}) = _$_ContactUpdateEventSave;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ContactUpdateEventSaveCopyWith<_$_ContactUpdateEventSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUpdateStateCopyWith<$Res> {
  factory $ContactUpdateStateCopyWith(
          ContactUpdateState value, $Res Function(ContactUpdateState) then) =
      _$ContactUpdateStateCopyWithImpl<$Res, ContactUpdateState>;
}

/// @nodoc
class _$ContactUpdateStateCopyWithImpl<$Res, $Val extends ContactUpdateState>
    implements $ContactUpdateStateCopyWith<$Res> {
  _$ContactUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactUpdateStateInitialCopyWith<$Res> {
  factory _$$_ContactUpdateStateInitialCopyWith(
          _$_ContactUpdateStateInitial value,
          $Res Function(_$_ContactUpdateStateInitial) then) =
      __$$_ContactUpdateStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactUpdateStateInitialCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res, _$_ContactUpdateStateInitial>
    implements _$$_ContactUpdateStateInitialCopyWith<$Res> {
  __$$_ContactUpdateStateInitialCopyWithImpl(
      _$_ContactUpdateStateInitial _value,
      $Res Function(_$_ContactUpdateStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactUpdateStateInitial implements _ContactUpdateStateInitial {
  const _$_ContactUpdateStateInitial();

  @override
  String toString() {
    return 'ContactUpdateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUpdateStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateInitial implements ContactUpdateState {
  const factory _ContactUpdateStateInitial() = _$_ContactUpdateStateInitial;
}

/// @nodoc
abstract class _$$_ContactUpdateStateLoadingCopyWith<$Res> {
  factory _$$_ContactUpdateStateLoadingCopyWith(
          _$_ContactUpdateStateLoading value,
          $Res Function(_$_ContactUpdateStateLoading) then) =
      __$$_ContactUpdateStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactUpdateStateLoadingCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res, _$_ContactUpdateStateLoading>
    implements _$$_ContactUpdateStateLoadingCopyWith<$Res> {
  __$$_ContactUpdateStateLoadingCopyWithImpl(
      _$_ContactUpdateStateLoading _value,
      $Res Function(_$_ContactUpdateStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactUpdateStateLoading implements _ContactUpdateStateLoading {
  const _$_ContactUpdateStateLoading();

  @override
  String toString() {
    return 'ContactUpdateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUpdateStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateLoading implements ContactUpdateState {
  const factory _ContactUpdateStateLoading() = _$_ContactUpdateStateLoading;
}

/// @nodoc
abstract class _$$_ContactUpdateStateSuccessCopyWith<$Res> {
  factory _$$_ContactUpdateStateSuccessCopyWith(
          _$_ContactUpdateStateSuccess value,
          $Res Function(_$_ContactUpdateStateSuccess) then) =
      __$$_ContactUpdateStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactUpdateStateSuccessCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res, _$_ContactUpdateStateSuccess>
    implements _$$_ContactUpdateStateSuccessCopyWith<$Res> {
  __$$_ContactUpdateStateSuccessCopyWithImpl(
      _$_ContactUpdateStateSuccess _value,
      $Res Function(_$_ContactUpdateStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactUpdateStateSuccess implements _ContactUpdateStateSuccess {
  const _$_ContactUpdateStateSuccess();

  @override
  String toString() {
    return 'ContactUpdateState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUpdateStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateSuccess implements ContactUpdateState {
  const factory _ContactUpdateStateSuccess() = _$_ContactUpdateStateSuccess;
}

/// @nodoc
abstract class _$$_ContactUpdateStateErrorCopyWith<$Res> {
  factory _$$_ContactUpdateStateErrorCopyWith(_$_ContactUpdateStateError value,
          $Res Function(_$_ContactUpdateStateError) then) =
      __$$_ContactUpdateStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ContactUpdateStateErrorCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res, _$_ContactUpdateStateError>
    implements _$$_ContactUpdateStateErrorCopyWith<$Res> {
  __$$_ContactUpdateStateErrorCopyWithImpl(_$_ContactUpdateStateError _value,
      $Res Function(_$_ContactUpdateStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ContactUpdateStateError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactUpdateStateError implements _ContactUpdateStateError {
  const _$_ContactUpdateStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactUpdateState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUpdateStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactUpdateStateErrorCopyWith<_$_ContactUpdateStateError>
      get copyWith =>
          __$$_ContactUpdateStateErrorCopyWithImpl<_$_ContactUpdateStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateError implements ContactUpdateState {
  const factory _ContactUpdateStateError({required final String message}) =
      _$_ContactUpdateStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_ContactUpdateStateErrorCopyWith<_$_ContactUpdateStateError>
      get copyWith => throw _privateConstructorUsedError;
}
