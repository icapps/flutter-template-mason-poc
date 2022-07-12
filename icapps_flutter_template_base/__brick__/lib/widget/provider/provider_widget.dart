import 'package:flutter/widgets.dart';
import 'package:{{project_name}}/styles/theme_data.dart';
import 'package:{{project_name}}/util/locale/localization.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class ProviderWidget<T extends ChangeNotifier> extends BaseProviderWidget<T, {{project_name.pascalCase()}}Theme, Localization> {
  const ProviderWidget({
    required T Function() create,
    Widget? child,
    Widget Function(BuildContext context, {{project_name.pascalCase()}}Theme theme, Localization localization)? childBuilder,
    Widget Function(BuildContext context, T viewModel, {{project_name.pascalCase()}}Theme theme, Localization localization)? childBuilderWithViewModel,
    Widget? consumerChild,
    Widget Function(BuildContext context, T viewModel, Widget? child)? consumer,
    Widget Function(BuildContext context, T viewModel, Widget? child, {{project_name.pascalCase()}}Theme theme, Localization localization)? consumerWithThemeAndLocalization,
    bool lazy = true,
  }) : super(
          create: create,
          child: child,
          childBuilder: childBuilder,
          childBuilderWithViewModel: childBuilderWithViewModel,
          consumerChild: consumerChild,
          consumer: consumer,
          consumerWithThemeAndLocalization: consumerWithThemeAndLocalization,
          lazy: lazy,
        );
}
