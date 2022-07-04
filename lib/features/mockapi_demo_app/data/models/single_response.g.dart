// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleTypeResponse _$SingleTypeResponseFromJson(Map<String, dynamic> json) =>
    SingleTypeResponse(
      dataItems: (json['items'] as List<dynamic>)
          .map((e) => DataItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$SingleTypeResponseToJson(SingleTypeResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'items': instance.dataItems,
    };
