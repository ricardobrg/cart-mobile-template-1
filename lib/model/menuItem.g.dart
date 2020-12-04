// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menuItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return MenuItem(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    pictureUrl: json['pictureUrl'] as String,
    spoons: json['spoons'] as num,
  );
}

Map<String, dynamic> _$MenuItemToJson(MenuItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pictureUrl': instance.pictureUrl,
      'spoons': instance.spoons,
    };
