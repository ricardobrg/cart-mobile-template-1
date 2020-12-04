import 'currency.dart';
import 'package:json_annotation/json_annotation.dart';


part 'price.g.dart';

@JsonSerializable()
class Price {
  final num amount;
  final num value;
  final Currency currency;

  Price(this.amount, this.value, this.currency);

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
