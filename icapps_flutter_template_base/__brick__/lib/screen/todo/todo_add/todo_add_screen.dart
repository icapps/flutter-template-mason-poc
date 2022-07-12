import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name}}/navigator/mixin/back_navigator.dart';
import 'package:{{project_name}}/navigator/mixin/error_navigator.dart';
import 'package:{{project_name}}/navigator/route_names.dart';
import 'package:{{project_name}}/styles/theme_dimens.dart';
import 'package:{{project_name}}/viewmodel/todo/todo_add/todo_add_viewmodel.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_back_button.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_button.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_input_field.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';
import 'package:scroll_when_needed/scroll_when_needed.dart';

class TodoAddScreen extends StatefulWidget {
  static const String routeName = RouteNames.todoAddScreen;

  const TodoAddScreen({Key? key}) : super(key: key);

  @override
  TodoAddScreenState createState() => TodoAddScreenState();
}

@visibleForTesting
class TodoAddScreenState extends State<TodoAddScreen> with BackNavigatorMixin, ErrorNavigatorMixin implements TodoAddNavigator {
  @override
  Widget build(BuildContext context) {
    return ProviderWidget<TodoAddViewModel>(
      create: () => GetIt.I()..init(this),
      childBuilderWithViewModel: (context, viewModel, _, localization) => Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: {{project_name.pascalCase()}}BackButton.light(onClick: viewModel.onBackClicked),
          title: Text(localization.todoAddTitle),
        ),
        body: ScrollConfiguration(
          behavior: ScrollWhenNeededBehavior(),
          child: Scrollbar(
            child: ListView(
              physics: ScrollWhenNeededPhysics(targetPlatform: Theme.of(context).platform),
              padding: const EdgeInsets.all(ThemeDimens.padding16),
              children: [
                {{project_name.pascalCase()}}InputField(
                  hint: localization.todoAddInputHint,
                  onChanged: viewModel.onTodoChanged,
                ),
                Container(height: ThemeDimens.padding16),
                {{project_name.pascalCase()}}Button(
                  text: localization.generalLabelSave,
                  isEnabled: viewModel.isSaveEnabled,
                  onClick: viewModel.onSaveClicked,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
