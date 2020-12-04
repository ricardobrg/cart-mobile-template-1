import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:rockspoon_cart_mobile/model/rsApi.dart';

part 'menuItem.g.dart';

/// The [MenuItem] class is used as a representation of the items delivered by
/// the [RsApi] in /composed endpoint
@JsonSerializable()
class MenuItem{
  String id;
  String name;
  String description;
  String pictureUrl;
  num spoons;

  MenuItem({
    this.id,
    this.name,
    this.description,
    this.pictureUrl,
    this.spoons
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);
  Map<String, dynamic> toJson() => _$MenuItemToJson(this);

  /// Get the [MenuItem] list from API based in [query]
  Future<List<MenuItem>> getItemsFromApi  (String query, {String page = "1"}) async {
    var list = [];
    var data = {
      "entity": "item",
      "page": page,
      "size": 20,
      "params": {
        "term": [query]
      }
    };
    var response = await RsApi().post(RsApi.listEndpoint, data);
    if(response.statusCode == 200){
      list = (json.decode(response.body) as List)
          .map((i) => MenuItem.fromJson(i))
          .toList();
    }else{
      throw HttpException("RsApi failed with status code ${response.statusCode}");
    }
    return list;
  }
}