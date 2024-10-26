// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_num.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseNum _$ResponseNumFromJson(Map<String, dynamic> json) => ResponseNum(
      text: json['text'] as String?,
      number: (json['number'] as num?)?.toInt(),
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ResponseNumToJson(ResponseNum instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
