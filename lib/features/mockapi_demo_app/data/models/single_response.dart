// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'item_data.dart';

part 'single_response.g.dart';

@JsonSerializable()
class SingleTypeResponse {
  SingleTypeResponse({
    required this.dataItems,
    required this.type,
  });
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "items")
  List<DataItems> dataItems;

  factory SingleTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleTypeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SingleTypeResponseToJson(this);
}
