import 'package:flutter/material.dart';
import 'package:{{project_name}}/widget/provider/data_provider_widget.dart';

class {{project_name.pascalCase()}}InputField extends StatelessWidget {
  final String hint;
  final bool enabled;
  final ValueChanged<String> onChanged;
  final TextEditingController? controller;

  const {{project_name.pascalCase()}}InputField({
    required this.hint,
    required this.onChanged,
    this.enabled = true,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataProviderWidget(
      childBuilderTheme: (context, theme) => TextField(
        controller: controller,
        enabled: enabled,
        decoration: InputDecoration(
          filled: true,
          hintText: hint,
          fillColor: theme.colorsTheme.inputFieldFill,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
