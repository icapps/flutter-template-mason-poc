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
      flavor: Flavor.dummy,
      name: 'DUMMY',
      color: Colors.purple,
      values: values,
    );
    // ignore: avoid_print
    print('Starting app from main_dummy.dart');
    await configureDependencies(Environments.dummy);
    runApp(const MyApp());
  });
}
