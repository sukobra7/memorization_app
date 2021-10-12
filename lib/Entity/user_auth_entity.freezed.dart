// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAuthEntity _$UserAuthEntityFromJson(Map<String, dynamic> json) {
  return _UserAuthEntity.fromJson(json);
}

/// @nodoc
class _$UserAuthEntityTearOff {
  const _$UserAuthEntityTearOff();

  _UserAuthEntity call({required String email, required String password}) {
    return _UserAuthEntity(
      email: email,
      password: password,
    );
  }

  UserAuthEntity fromJson(Map<String, Object> json) {
    return UserAuthEntity.fromJson(json);
  }
}

/// @nodoc
const $UserAuthEntity = _$UserAuthEntityTearOff();

/// @nodoc
mixin _$UserAuthEntity {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthEntityCopyWith<UserAuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthEntityCopyWith<$Res> {
  factory $UserAuthEntityCopyWith(
          UserAuthEntity value, $Res Function(UserAuthEntity) then) =
      _$UserAuthEntityCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$UserAuthEntityCopyWithImpl<$Res>
    implements $UserAuthEntityCopyWith<$Res> {
  _$UserAuthEntityCopyWithImpl(this._value, this._then);

  final UserAuthEntity _value;
  // ignore: unused_field
  final $Res Function(UserAuthEntity) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAuthEntityCopyWith<$Res>
    implements $UserAuthEntityCopyWith<$Res> {
  factory _$UserAuthEntityCopyWith(
          _UserAuthEntity value, $Res Function(_UserAuthEntity) then) =
      __$UserAuthEntityCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$UserAuthEntityCopyWithImpl<$Res>
    extends _$UserAuthEntityCopyWithImpl<$Res>
    implements _$UserAuthEntityCopyWith<$Res> {
  __$UserAuthEntityCopyWithImpl(
      _UserAuthEntity _value, $Res Function(_UserAuthEntity) _then)
      : super(_value, (v) => _then(v as _UserAuthEntity));

  @override
  _UserAuthEntity get _value => super._value as _UserAuthEntity;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_UserAuthEntity(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAuthEntity implements _UserAuthEntity {
  const _$_UserAuthEntity({required this.email, required this.password});

  factory _$_UserAuthEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAuthEntityFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuthEntity &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$UserAuthEntityCopyWith<_UserAuthEntity> get copyWith =>
      __$UserAuthEntityCopyWithImpl<_UserAuthEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAuthEntityToJson(this);
  }
}

abstract class _UserAuthEntity implements UserAuthEntity {
  const factory _UserAuthEntity(
      {required String email, required String password}) = _$_UserAuthEntity;

  factory _UserAuthEntity.fromJson(Map<String, dynamic> json) =
      _$_UserAuthEntity.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAuthEntityCopyWith<_UserAuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
