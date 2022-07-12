import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name}}/navigator/mixin/back_navigator.dart';
import 'package:{{project_name}}/navigator/route_names.dart';
import 'package:{{project_name}}/viewmodel/debug/debug_platform_selector_viewmodel.dart';
import 'package:{{project_name}}/viewmodel/global/global_viewmodel.dart';
import 'package:{{project_name}}/widget/debug/selector_item.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_back_button.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class ThemeModeSelectorScreen extends StatefulWidget {
  static const String routeName = RouteNames.themeModeSelectorScreen;

  const ThemeModeSelectorScreen({
    Key? key,
  }) : super(key: key);

  @override
  ThemeModeSelectorScreenState createState() => ThemeModeSelectorScreenState();
}

@visibleForTesting
class ThemeModeSelectorScreenState extends State<ThemeModeSelectorScreen> with BackNavigatorMixin implements DebugPlatformSelectorNavigator {
  @override
  Widget build(BuildContext context) {
    return ProviderWidget<DebugPlatformSelectorViewModel>(
      childBuilderWithViewModel: (context, value, _, localization) => Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: {{project_name.pascalCase()}}BackButton.light(onClick: value.onBackClicked),
          title: const Text('Select a theme mode'),
        ),
        body: Consumer<GlobalViewModel>(
          builder: (context, viewModel, child) => ListView(
            children: [
              SelectorItem(
                title: localization.generalLabelSystemDefault,
                onClick: () => viewModel.updateThemeMode(ThemeMode.system),
                selected: viewModel.themeMode == ThemeMode.system,
              ),
              SelectorItem(
                title: localization.themeModeLabelLight,
                onClick: () => viewModel.updateThemeMode(ThemeMode.light),
                selected: viewModel.themeMode == ThemeMode.light,
              ),
              SelectorItem(
                title: localization.themeModeLabelDark,
                onClick: () => viewModel.updateThemeMode(ThemeMode.dark),
                selected: viewModel.themeMode == ThemeMode.dark,
              ),
            ],
          ),
        ),
      ),
      create: () => GetIt.I()..init(this),
    );
  }
}
