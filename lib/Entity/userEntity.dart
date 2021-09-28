import 'package:freezed_annotation/freezed_annotation.dart';

part 'userEntity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({required String name, required String email, required String password }) = _User;
  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
} 