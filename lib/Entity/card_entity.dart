import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_entity.freezed.dart';
part 'card_entity.g.dart';

@freezed
class CardEntity with _$CardEntity {
  const factory CardEntity({required String front, required String back, required String status, required int deckId }) = _CardEntity;
  factory CardEntity.fromJson(Map<String, dynamic> json) => _$CardEntityFromJson(json);
} 