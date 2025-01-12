// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveDataImpl _$$SaveDataImplFromJson(Map<String, dynamic> json) =>
    _$SaveDataImpl(
      simulate: (json['simulate'] as List<dynamic>)
          .map((e) => Scene.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaveDataImplToJson(_$SaveDataImpl instance) =>
    <String, dynamic>{
      'simulate': instance.simulate,
    };
