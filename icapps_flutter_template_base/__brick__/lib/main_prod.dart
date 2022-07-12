import 'package:flutter/material.dart';
import 'package:{{project_name}}/app.dart';
import 'package:{{project_name}}/architecture.dart';
import 'package:{{project_name}}/di/environments.dart';
import 'package:{{project_name}}/di/injectable.dart';
import 'package:{{project_name}}/main_common.dart';
import 'package:{{project_name}}/util/env/flavor_config.dart';

Future<void> main() async {
  await wrapMain(() async {
    await initArchitecture();
    const values = FlavorValues(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      logNetworkInfo: false,
      showFullErrorMessages: false,
    );
    FlavorConfig(
      flavor: Flavor.prod,
      name: 'PROD',
      color: Colors.transparent,
      values: values,
    );
    await configureDependencies(Environments.prod);
    runApp(const MyApp());
  });
}
