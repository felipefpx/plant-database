import 'dart:convert';
import 'dart:io';
import 'in/plant_in.dart';
import 'out/plant_out.dart';

void cleanPlants() async {
  final files = await Directory('json').list().toList();
  files.sort((file1, file2) => file1.path.compareTo(file2.path));
  final inPlants =
      files.map(readPlant).where((plant) => plant != null).toList();
  final result = inPlants.map((inPlant) {
    writePlantImage(inPlant!);
    return PlantOut.fromPlantIn(inPlant);
  }).toList();
  writePlants(result);

//   final inPlant = readPlant(files.first);
//   writePlantImage(inPlant!);
//   writePlants([PlantOut.fromPlantIn(inPlant)]);
}

PlantIn? readPlant(FileSystemEntity fileEntity) {
  final file = File(fileEntity.path);
  print('Reading ${file.path}...');
  final jsonString = file.readAsStringSync();

  if (jsonString.isEmpty) {
    print('Skipped');
    return null;
  }

  try {
    final json = jsonDecode(jsonString);
    final plant = PlantIn.fromJson(json);
    print('Done');
    return plant;
  } catch (e) {
    print('Skipped with error');
    return null;
  }
}

void writePlantImage(PlantIn plantIn) {
  final bytesImage = Base64Decoder().convert(
    plantIn.image.replaceAll('data:image/jpeg;base64,', ''),
  );

  final imageFile = File(
    'clean/images/${plantIn.pid.toLowerCase().replaceAll(' ', '_').replaceAll('\'', '')}.jpeg',
  );
  if (imageFile.existsSync()) {
    imageFile.deleteSync();
  }
  imageFile.parent.parent.createSync();
  imageFile.parent.createSync();

  imageFile.writeAsBytesSync(bytesImage);
}

void writePlants(List<PlantOut> plantOut) {
  final file = File('clean/plants.json');
  if (file.existsSync()) {
    file.deleteSync();
  }
  file.parent.createSync();
  file.writeAsStringSync(jsonEncode(plantOut));
}
