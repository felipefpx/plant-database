import 'package:json_annotation/json_annotation.dart';

part 'plant_in.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PlantIn {
  final String pid, displayPid, image;
  final BasicInfo basic;
  final Maintenance maintenance;
  final Parameter parameter;

  PlantIn(this.pid, this.displayPid, this.image, this.basic, this.maintenance,
      this.parameter);

  factory PlantIn.fromJson(Map<String, dynamic> json) =>
      _$PlantInFromJson(json);

  Map<String, dynamic> toJson() => _$PlantInToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BasicInfo {
  final String floralLanguage, origin, production, category, blooming, color;

  BasicInfo(this.floralLanguage, this.origin, this.production, this.category,
      this.blooming, this.color);

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BasicInfoToJson(this);

  @override
  String toString() {
    return '$floralLanguage, $origin, $production, $category, $blooming, $color';
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Maintenance {
  final String size, soil, sunlight, watering, fertilization, pruning;

  Maintenance(this.size, this.soil, this.sunlight, this.watering,
      this.fertilization, this.pruning);

  factory Maintenance.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceFromJson(json);

  Map<String, dynamic> toJson() => _$MaintenanceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Parameter {
  final num maxLightMmol,
      minLightMmol,
      maxLightLux,
      minLightLux,
      maxTemp,
      minTemp,
      maxEnvHumid,
      minEnvHumid,
      maxSoilMoist,
      minSoilMoist,
      maxSoilEc,
      minSoilEc;

  Parameter(
      this.maxLightMmol,
      this.minLightMmol,
      this.maxLightLux,
      this.minLightLux,
      this.maxTemp,
      this.minTemp,
      this.maxEnvHumid,
      this.minEnvHumid,
      this.maxSoilMoist,
      this.minSoilMoist,
      this.maxSoilEc,
      this.minSoilEc);

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterToJson(this);
}
