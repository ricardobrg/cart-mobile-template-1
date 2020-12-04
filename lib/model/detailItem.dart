import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:rockspoon_cart_mobile/model/price.dart';
import 'package:rockspoon_cart_mobile/model/menuItem.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rockspoon_cart_mobile/model/rsApi.dart';

import 'itemSize.dart';

part 'detailItem.g.dart';

@JsonSerializable()
class DetailItem extends MenuItem{
  String name;
  List<String> tags;
  String price;
  List<String> availableFor;
  List<ItemSize> sizes;
  List<Price> prices;

  DetailItem({
    this.tags,
    this.price,
    this.availableFor,
  });

  factory DetailItem.fromJson(Map<String, dynamic> json) => _$DetailItemFromJson(json);
  Map<String, dynamic> toJson() => _$DetailItemToJson(this);

  /// Get the [DetailItem] from API based in [itemId]
  static Future<DetailItem> getFromApi(String itemId) async {
    var endpoint = RsApi.detailEndpoint + itemId;
    var response = await RsApi().get(endpoint);
    if(response.statusCode == 200){
      return DetailItem.fromJson(json.decode(response.body));
    }else{
      throw HttpException("RsApi failed with status code ${response.statusCode}");
    }
  }
}
