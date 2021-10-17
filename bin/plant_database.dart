import 'dart:convert';
import 'dart:io';

import 'out/plant_out.dart';

void main(List<String> arguments) async {
//   cleanPlants();
  final plants = readPlants();
  final keyword = 'maranta';
  final matches = findBestMatch(keyword, plants);
  matches.forEach((e) => print('${e.displayPid},\n'));
}

List<PlantOut> findBestMatch(String keyword, List<PlantOut> plants) {
  final result = plants
      .where((element) => element.toString().toLowerCase().contains(keyword))
      .toList();
  result.sort((element1, element2) {
    final onName1 =
        element1.displayPid.toLowerCase().contains(keyword) ? 1 : -1;
    final onName2 =
        element2.displayPid.toLowerCase().contains(keyword) ? 1 : -1;

    if (onName1 != onName2) {
      return onName1.compareTo(onName2);
    } else {
      return element1.displayPid.compareTo(element2.displayPid);
    }
  });
  return result.reversed.toList();
}

List<PlantOut> readPlants() {
  final file = File('clean/plants.json');
  print('Reading ${file.path}...');
  final jsonString = file.readAsStringSync();

  final json = jsonDecode(jsonString) as List<dynamic>;
  return json.map((plantJson) => PlantOut.fromJson(plantJson)).toList();
}
