import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';
part 'currency.g.dart';

@JsonSerializable()
class Currency{
  final int decimal;
  final String symbol;
  final String type;

  Currency(this.decimal, this.symbol, this.type);

  String format(num number){
    NumberFormat numberFormatter = new NumberFormat.currency(
        symbol: this.symbol,
        decimalDigits: this.decimal,
        name: this.type
    );
    return numberFormatter.format(number);
  }

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}





