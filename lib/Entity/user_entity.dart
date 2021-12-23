import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({required String name, required String email, required String password, required String userId}) = _UserEntity;
  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
} 