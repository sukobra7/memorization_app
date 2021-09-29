import 'package:freezed_annotation/freezed_annotation.dart';

part 'deckEntity.freezed.dart';

@freezed
class DeckEntity with _$DeckEntity {
  const factory DeckEntity({required String title, required String description, required int userId}) = _DeckEntity;
    factory DeckEntity.fromJson(Map<String, dynamic> json) => _$DeckEntityFromJson(json);
}