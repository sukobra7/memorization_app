// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeckEntity _$_$_DeckEntityFromJson(Map<String, dynamic> json) {
  return _$_DeckEntity(
    title: json['title'] as String,
    description: json['description'] as String,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$_$_DeckEntityToJson(_$_DeckEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'userId': instance.userId,
    };
