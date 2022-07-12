import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info('Starting pre_gen.dart');
  context.logger.info('Setting the project name to snake case');
  context.logger.info(context.vars['project_name'] = context.vars['project_name'].toString().toLowerCase().replaceAll(' ', '_'));
  context.logger.info('Ending pre_gen.dart');
}
