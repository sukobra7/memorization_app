import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_auth_entity.freezed.dart';
part 'user_auth_entity.g.dart';

@freezed
class UserAuthEntity with _$UserAuthEntity {
  const factory UserAuthEntity({required String email, required String password}) = _UserAuthEntity;
  factory UserAuthEntity.fromJson(Map<String, dynamic> json) => _$UserAuthEntityFromJson(json);
}