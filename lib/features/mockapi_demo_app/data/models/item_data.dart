import 'package:json_annotation/json_annotation.dart';
part 'item_data.g.dart';

@JsonSerializable()
class DataItems {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "image")
  final String image;

  @JsonKey(name: "label")
  final String? label;

  DataItems({
    required this.id,
    required this.image,
    required this.label,
  });
  factory DataItems.fromJson(Map<String, dynamic> json) =>
      _$DataItemsFromJson(json);

  Map<String, dynamic> toJson() => _$DataItemsToJson(this);
}
