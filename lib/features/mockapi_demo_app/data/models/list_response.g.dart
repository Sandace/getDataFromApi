// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTypeResponse _$ListTypeResponseFromJson(Map<String, dynamic> json) =>
    ListTypeResponse(
      type: (json['type'] as List<dynamic>)
          .map((e) => SingleTypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTypeResponseToJson(ListTypeResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
