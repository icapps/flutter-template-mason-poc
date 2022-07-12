import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart';

void run(HookContext context) {
  context.logger.info('Starting post_gen.dart');
  if (!context.useTodo) {
    removeTodoFolders(context);
    removeTodoFiles(context);
  }
  if (context.useFirebase) {
    context.logger.info("Don't forget to download all the firebase configs and place them in the correct folder");
  }
  context.logger.info('Ending post_gen.dart');
}

extension HookContextExtensions on HookContext {
  bool get useTodo => vars['use_todo'] == true;

  bool get useFirebase => vars['use_firebase'] == true;

  String get projectDir => 'test_dir';
}

Future<void> removeTodoFolders(HookContext context) async {
  if (!context.useTodo) return;
  final progress = context.logger.progress('Removing todo folder');
  final folderPaths = [''];
  for (final path in folderPaths) {
    final file = Directory(join(Directory.current.path, context.projectDir, path));
    if (file.existsSync()) {
      file.deleteSync();
      progress.update('$path deleted!');
    } else {
      progress.update('$path does not exist, skip!');
    }
  }
  progress.complete();
}

Future<void> removeTodoFiles(HookContext context) async {
  if (!context.useTodo) return;
  final progress = context.logger.progress('Removing todo files');
  final filePaths = [''];
  for (final path in filePaths) {
    final file = Directory(join(Directory.current.path, context.projectDir, path));
    if (file.existsSync()) {
      file.deleteSync();
      progress.update('$path deleted!');
    } else {
      progress.update('$path does not exist, skip!');
    }
  }
  progress.complete();
}
