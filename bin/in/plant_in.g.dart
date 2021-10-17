// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlantIn _$PlantInFromJson(Map<String, dynamic> json) => PlantIn(
      json['pid'] as String,
      json['display_pid'] as String,
      json['image'] as String,
      BasicInfo.fromJson(json['basic'] as Map<String, dynamic>),
      Maintenance.fromJson(json['maintenance'] as Map<String, dynamic>),
      Parameter.fromJson(json['parameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlantInToJson(PlantIn instance) => <String, dynamic>{
      'pid': instance.pid,
      'display_pid': instance.displayPid,
      'image': instance.image,
      'basic': instance.basic,
      'maintenance': instance.maintenance,
      'parameter': instance.parameter,
    };

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) => BasicInfo(
      json['floral_language'] as String,
      json['origin'] as String,
      json['production'] as String,
      json['category'] as String,
      json['blooming'] as String,
      json['color'] as String,
    );

Map<String, dynamic> _$BasicInfoToJson(BasicInfo instance) => <String, dynamic>{
      'floral_language': instance.floralLanguage,
      'origin': instance.origin,
      'production': instance.production,
      'category': instance.category,
      'blooming': instance.blooming,
      'color': instance.color,
    };

Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) => Maintenance(
      json['size'] as String,
      json['soil'] as String,
      json['sunlight'] as String,
      json['watering'] as String,
      json['fertilization'] as String,
      json['pruning'] as String,
    );

Map<String, dynamic> _$MaintenanceToJson(Maintenance instance) =>
    <String, dynamic>{
      'size': instance.size,
      'soil': instance.soil,
      'sunlight': instance.sunlight,
      'watering': instance.watering,
      'fertilization': instance.fertilization,
      'pruning': instance.pruning,
    };

Parameter _$ParameterFromJson(Map<String, dynamic> json) => Parameter(
      json['max_light_mmol'] as num,
      json['min_light_mmol'] as num,
      json['max_light_lux'] as num,
      json['min_light_lux'] as num,
      json['max_temp'] as num,
      json['min_temp'] as num,
      json['max_env_humid'] as num,
      json['min_env_humid'] as num,
      json['max_soil_moist'] as num,
      json['min_soil_moist'] as num,
      json['max_soil_ec'] as num,
      json['min_soil_ec'] as num,
    );

Map<String, dynamic> _$ParameterToJson(Parameter instance) => <String, dynamic>{
      'max_light_mmol': instance.maxLightMmol,
      'min_light_mmol': instance.minLightMmol,
      'max_light_lux': instance.maxLightLux,
      'min_light_lux': instance.minLightLux,
      'max_temp': instance.maxTemp,
      'min_temp': instance.minTemp,
      'max_env_humid': instance.maxEnvHumid,
      'min_env_humid': instance.minEnvHumid,
      'max_soil_moist': instance.maxSoilMoist,
      'min_soil_moist': instance.minSoilMoist,
      'max_soil_ec': instance.maxSoilEc,
      'min_soil_ec': instance.minSoilEc,
    };
