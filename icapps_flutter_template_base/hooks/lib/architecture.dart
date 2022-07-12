import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

Future<PubSpecYaml> get() async {
  final yamlFile = File(join(Directory.current.path, 'pubspec.yaml'));
  if (!yamlFile.existsSync()) {
    throw ArgumentError('pubspec.yaml not found, Make sure you first initialize your base project');
  }
  final yamlData = await yamlFile.readAsStringSync();
  final YamlMap yaml = loadYaml(yamlData);
  return PubSpecYaml(
    projectName: yaml['name'] as String,
  );
}

class PubSpecYaml {
  final String projectName;

  PubSpecYaml({
    required this.projectName,
  });
}