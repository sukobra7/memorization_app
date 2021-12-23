// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'deck_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeckEntity _$DeckEntityFromJson(Map<String, dynamic> json) {
  return _DeckEntity.fromJson(json);
}

/// @nodoc
class _$DeckEntityTearOff {
  const _$DeckEntityTearOff();

  _DeckEntity call(
      {required String title,
      required String description,
      required String userId}) {
    return _DeckEntity(
      title: title,
      description: description,
      userId: userId,
    );
  }

  DeckEntity fromJson(Map<String, Object> json) {
    return DeckEntity.fromJson(json);
  }
}

/// @nodoc
const $DeckEntity = _$DeckEntityTearOff();

/// @nodoc
mixin _$DeckEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeckEntityCopyWith<DeckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckEntityCopyWith<$Res> {
  factory $DeckEntityCopyWith(
          DeckEntity value, $Res Function(DeckEntity) then) =
      _$DeckEntityCopyWithImpl<$Res>;
  $Res call({String title, String description, String userId});
}

/// @nodoc
class _$DeckEntityCopyWithImpl<$Res> implements $DeckEntityCopyWith<$Res> {
  _$DeckEntityCopyWithImpl(this._value, this._then);

  final DeckEntity _value;
  // ignore: unused_field
  final $Res Function(DeckEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeckEntityCopyWith<$Res> implements $DeckEntityCopyWith<$Res> {
  factory _$DeckEntityCopyWith(
          _DeckEntity value, $Res Function(_DeckEntity) then) =
      __$DeckEntityCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String userId});
}

/// @nodoc
class __$DeckEntityCopyWithImpl<$Res> extends _$DeckEntityCopyWithImpl<$Res>
    implements _$DeckEntityCopyWith<$Res> {
  __$DeckEntityCopyWithImpl(
      _DeckEntity _value, $Res Function(_DeckEntity) _then)
      : super(_value, (v) => _then(v as _DeckEntity));

  @override
  _DeckEntity get _value => super._value as _DeckEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_DeckEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeckEntity implements _DeckEntity {
  const _$_DeckEntity(
      {required this.title, required this.description, required this.userId});

  factory _$_DeckEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_DeckEntityFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String userId;

  @override
  String toString() {
    return 'DeckEntity(title: $title, description: $description, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeckEntity &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$DeckEntityCopyWith<_DeckEntity> get copyWith =>
      __$DeckEntityCopyWithImpl<_DeckEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeckEntityToJson(this);
  }
}

abstract class _DeckEntity implements DeckEntity {
  const factory _DeckEntity(
      {required String title,
      required String description,
      required String userId}) = _$_DeckEntity;

  factory _DeckEntity.fromJson(Map<String, dynamic> json) =
      _$_DeckEntity.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeckEntityCopyWith<_DeckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
