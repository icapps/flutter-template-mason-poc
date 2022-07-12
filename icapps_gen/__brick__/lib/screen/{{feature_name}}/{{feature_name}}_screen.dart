import 'package:flutter/material.dart';
import 'package:{{project_name}}/viewmodel/{{feature_name}}/{{feature_name}}_viewmodel.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';

class {{feature_name.pascalCase()}}Screen extends StatefulWidget {
  const {{feature_name.pascalCase()}}Screen({
    Key? key,
  }) : super(key: key);

  @override
  {{feature_name.pascalCase()}}ScreenState createState() => {{feature_name.pascalCase()}}ScreenState();
}

@visibleForTesting
class {{feature_name.pascalCase()}}ScreenState extends State<{{feature_name.pascalCase()}}Screen> implements {{feature_name.pascalCase()}}ViewNavigator {
  @override
  Widget build(BuildContext context) {
    return ProviderWidget<{{feature_name.pascalCase()}}ViewModel>(
      create: () => GetIt.I()..init(this),
      consumerWithThemeAndLocalization: (context, viewModel, child, theme, localization) {
        return Container();
      },
    );
  }
}
