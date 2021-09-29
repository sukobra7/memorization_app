// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardEntity _$_$_CardEntityFromJson(Map<String, dynamic> json) {
  return _$_CardEntity(
    front: json['front'] as String,
    back: json['back'] as String,
    status: json['status'] as String,
    deckId: json['deckId'] as int,
  );
}

Map<String, dynamic> _$_$_CardEntityToJson(_$_CardEntity instance) =>
    <String, dynamic>{
      'front': instance.front,
      'back': instance.back,
      'status': instance.status,
      'deckId': instance.deckId,
    };
