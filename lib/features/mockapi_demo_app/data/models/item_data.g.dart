// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataItems _$DataItemsFromJson(Map<String, dynamic> json) => DataItems(
      id: json['id'] as int,
      image: json['image'] as String,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$DataItemsToJson(DataItems instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'label': instance.label,
    };
