import 'package:flutter/material.dart';
import 'package:{{project_name}}/widget/provider/data_provider_widget.dart';

class {{project_name.pascalCase()}}Switch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const {{project_name.pascalCase()}}Switch({
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataProviderWidget(
      childBuilderTheme: (context, theme) => Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeColor: theme.colorsTheme.accent,
      ),
    );
  }
}
