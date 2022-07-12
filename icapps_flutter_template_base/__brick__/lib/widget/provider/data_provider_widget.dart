import 'package:flutter/widgets.dart';
import 'package:{{project_name}}/styles/theme_data.dart';
import 'package:{{project_name}}/util/locale/localization.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class DataProviderWidget extends BaseThemeProviderWidget<{{project_name.pascalCase()}}Theme, Localization> {
  const DataProviderWidget({
    Widget Function(BuildContext context, {{project_name.pascalCase()}}Theme theme)? childBuilderTheme,
    Widget Function(BuildContext context, Localization localization)? childBuilderLocalization,
    Widget Function(BuildContext context, {{project_name.pascalCase()}}Theme theme, Localization localization)? childBuilder,
  }) : super(
          childBuilderTheme: childBuilderTheme,
          childBuilderLocalization: childBuilderLocalization,
          childBuilder: childBuilder,
        );
}
