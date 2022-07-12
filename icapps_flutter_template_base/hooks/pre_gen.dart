import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info('Starting pre_gen.dart');
  context.logger.info('Setting the project name to snake case');
  context.logger.info(context.vars['project_name'] = context.vars['project_name'].toString().toLowerCase().replaceAll(' ', '_'));
  if (context.useTodo) {
    context.logger.info('We will remove all todo references.');
  }
  context.logger.info('Ending pre_gen.dart');
}

extension HookContextExtensions on HookContext {
  bool get useTodo => vars['use_todo'] == true;

  bool get useFirebase => vars['use_firebase'] == true;

  String get projectDir => 'test_dir';
}
