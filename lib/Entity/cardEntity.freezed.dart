// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cardEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) {
  return _CardEntity.fromJson(json);
}

/// @nodoc
class _$CardEntityTearOff {
  const _$CardEntityTearOff();

  _CardEntity call(
      {required String front,
      required String back,
      required String status,
      required int deckId}) {
    return _CardEntity(
      front: front,
      back: back,
      status: status,
      deckId: deckId,
    );
  }

  CardEntity fromJson(Map<String, Object> json) {
    return CardEntity.fromJson(json);
  }
}

/// @nodoc
const $CardEntity = _$CardEntityTearOff();

/// @nodoc
mixin _$CardEntity {
  String get front => throw _privateConstructorUsedError;
  String get back => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get deckId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardEntityCopyWith<CardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEntityCopyWith<$Res> {
  factory $CardEntityCopyWith(
          CardEntity value, $Res Function(CardEntity) then) =
      _$CardEntityCopyWithImpl<$Res>;
  $Res call({String front, String back, String status, int deckId});
}

/// @nodoc
class _$CardEntityCopyWithImpl<$Res> implements $CardEntityCopyWith<$Res> {
  _$CardEntityCopyWithImpl(this._value, this._then);

  final CardEntity _value;
  // ignore: unused_field
  final $Res Function(CardEntity) _then;

  @override
  $Res call({
    Object? front = freezed,
    Object? back = freezed,
    Object? status = freezed,
    Object? deckId = freezed,
  }) {
    return _then(_value.copyWith(
      front: front == freezed
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: back == freezed
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deckId: deckId == freezed
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CardEntityCopyWith<$Res> implements $CardEntityCopyWith<$Res> {
  factory _$CardEntityCopyWith(
          _CardEntity value, $Res Function(_CardEntity) then) =
      __$CardEntityCopyWithImpl<$Res>;
  @override
  $Res call({String front, String back, String status, int deckId});
}

/// @nodoc
class __$CardEntityCopyWithImpl<$Res> extends _$CardEntityCopyWithImpl<$Res>
    implements _$CardEntityCopyWith<$Res> {
  __$CardEntityCopyWithImpl(
      _CardEntity _value, $Res Function(_CardEntity) _then)
      : super(_value, (v) => _then(v as _CardEntity));

  @override
  _CardEntity get _value => super._value as _CardEntity;

  @override
  $Res call({
    Object? front = freezed,
    Object? back = freezed,
    Object? status = freezed,
    Object? deckId = freezed,
  }) {
    return _then(_CardEntity(
      front: front == freezed
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: back == freezed
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deckId: deckId == freezed
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardEntity implements _CardEntity {
  const _$_CardEntity(
      {required this.front,
      required this.back,
      required this.status,
      required this.deckId});

  factory _$_CardEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CardEntityFromJson(json);

  @override
  final String front;
  @override
  final String back;
  @override
  final String status;
  @override
  final int deckId;

  @override
  String toString() {
    return 'CardEntity(front: $front, back: $back, status: $status, deckId: $deckId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardEntity &&
            (identical(other.front, front) ||
                const DeepCollectionEquality().equals(other.front, front)) &&
            (identical(other.back, back) ||
                const DeepCollectionEquality().equals(other.back, back)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deckId, deckId) ||
                const DeepCollectionEquality().equals(other.deckId, deckId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(front) ^
      const DeepCollectionEquality().hash(back) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deckId);

  @JsonKey(ignore: true)
  @override
  _$CardEntityCopyWith<_CardEntity> get copyWith =>
      __$CardEntityCopyWithImpl<_CardEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardEntityToJson(this);
  }
}

abstract class _CardEntity implements CardEntity {
  const factory _CardEntity(
      {required String front,
      required String back,
      required String status,
      required int deckId}) = _$_CardEntity;

  factory _CardEntity.fromJson(Map<String, dynamic> json) =
      _$_CardEntity.fromJson;

  @override
  String get front => throw _privateConstructorUsedError;
  @override
  String get back => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get deckId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardEntityCopyWith<_CardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
