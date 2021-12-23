import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_entity.freezed.dart';
part 'deck_entity.g.dart';


@freezed
class DeckEntity with _$DeckEntity {
  const factory DeckEntity({required String title, required String description, required String userId}) = _DeckEntity;
    factory DeckEntity.fromJson(Map<String, dynamic> json) => _$DeckEntityFromJson(json);
}