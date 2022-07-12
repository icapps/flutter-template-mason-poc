import 'package:flutter/material.dart';
import 'package:{{project_name}}/styles/theme_assets.dart';
import 'package:{{project_name}}/util/keys.dart';
import 'package:{{project_name}}/widget/general/action/action_item.dart';
import 'package:{{project_name}}/widget/provider/data_provider_widget.dart';

class {{project_name.pascalCase()}}BackButton extends StatelessWidget {
  final VoidCallback? onClick;
  final bool fullScreen;
  final bool isLight;

  const {{project_name.pascalCase()}}BackButton.light({
    required this.onClick,
    this.fullScreen = false,
    Key? key,
  })  : isLight = true,
        super(key: key);

  const {{project_name.pascalCase()}}BackButton.dark({
    required this.onClick,
    this.fullScreen = false,
    Key? key,
  })  : isLight = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataProviderWidget(
      childBuilderTheme: (context, theme) => ActionItem(
        key: Keys.backButton,
        svgAsset: getCorrectIcon(context),
        color: isLight ? theme.colorsTheme.icon : theme.colorsTheme.inverseIcon,
        onClick: onClick,
      ),
    );
  }

  String getCorrectIcon(BuildContext context) {
    if (fullScreen) {
      return ThemeAssets.closeIcon(context);
    }
    return ThemeAssets.backIcon(context);
  }
}
