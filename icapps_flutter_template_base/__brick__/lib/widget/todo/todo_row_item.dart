import 'package:flutter/material.dart';
import 'package:{{project_name}}/styles/theme_dimens.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_checkbox.dart';

class TodoRowItem extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const TodoRowItem({
    required this.title,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeDimens.padding16,
          vertical: ThemeDimens.padding8,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(title),
            ),
            {{project_name.pascalCase()}}CheckBox(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
