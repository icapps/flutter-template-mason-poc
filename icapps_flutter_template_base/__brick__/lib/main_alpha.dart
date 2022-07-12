import 'package:flutter/material.dart';
import 'package:{{project_name}}/app.dart';
import 'package:{{project_name}}/di/environments.dart';
import 'package:{{project_name}}/di/injectable.dart';
import 'package:{{project_name}}/main_common.dart';
import 'package:{{project_name}}/util/env/flavor_config.dart';

Future<void> main() async {
  await wrapMain(() async {
    const values = FlavorValues(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      logNetworkInfo: false,
      showFullErrorMessages: true,
    );
    FlavorConfig(
      flavor: Flavor.alpha,
      name: 'ALPHA',
      color: Colors.amber,
      values: values,
    );
    await configureDependencies(Environments.prod);
    runApp(const MyApp());
  });
}
