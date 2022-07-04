import 'package:json_annotation/json_annotation.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/single_response.dart';

part 'list_response.g.dart';

@JsonSerializable()
class ListTypeResponse {
  ListTypeResponse({required this.type});

  // @JsonKey(name: "type")
  List<SingleTypeResponse> type;

  factory ListTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$ListTypeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ListTypeResponseToJson(this);
}
