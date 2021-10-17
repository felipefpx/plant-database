// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlantOut _$PlantOutFromJson(Map<String, dynamic> json) => PlantOut(
      json['pid'] as String,
      json['display_pid'] as String,
      BasicInfo.fromJson(json['basic'] as Map<String, dynamic>),
      Maintenance.fromJson(json['maintenance'] as Map<String, dynamic>),
      Parameter.fromJson(json['parameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlantOutToJson(PlantOut instance) => <String, dynamic>{
      'pid': instance.pid,
      'display_pid': instance.displayPid,
      'basic': instance.basic,
      'maintenance': instance.maintenance,
      'parameter': instance.parameter,
    };
