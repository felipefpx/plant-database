import '../in/plant_in.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plant_out.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PlantOut {
  final String pid, displayPid;
  final BasicInfo basic;
  final Maintenance maintenance;
  final Parameter parameter;

  PlantOut(
    this.pid,
    this.displayPid,
    this.basic,
    this.maintenance,
    this.parameter,
  );

  factory PlantOut.fromJson(Map<String, dynamic> json) =>
      _$PlantOutFromJson(json);

  Map<String, dynamic> toJson() => _$PlantOutToJson(this);

  factory PlantOut.fromPlantIn(PlantIn plantIn) {
    return PlantOut(
      plantIn.pid.toLowerCase().replaceAll(' ', '_').replaceAll('\'', ''),
      plantIn.displayPid,
      plantIn.basic,
      plantIn.maintenance,
      plantIn.parameter,
    );
  }

  @override
  String toString() {
    return '$pid, $displayPid, ${basic.toString()}';
  }
}
