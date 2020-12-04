// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailItem _$DetailItemFromJson(Map<String, dynamic> json) {
  return DetailItem(
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    price: (json['price'] as List)
        ?.map(
            (e) => e == null ? null : Price.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availableFor:
        (json['availableFor'] as List)?.map((e) => e as String)?.toList(),
  )
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..pictureUrl = json['pictureUrl'] as String
    ..spoons = json['spoons'] as num;
}

Map<String, dynamic> _$DetailItemToJson(DetailItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'pictureUrl': instance.pictureUrl,
      'spoons': instance.spoons,
      'tags': instance.tags,
      'price': instance.price,
      'availableFor': instance.availableFor,
    };
