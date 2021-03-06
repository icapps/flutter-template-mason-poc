import 'package:flutter/material.dart';
import 'package:{{project_name}}/styles/theme_durations.dart';
import 'package:{{project_name}}/widget/provider/data_provider_widget.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class {{project_name.pascalCase()}}Button extends StatelessWidget {
  final String text;
  final double height;
  final bool isEnabled;
  final VoidCallback? onClick;

  const {{project_name.pascalCase()}}Button({
    required this.text,
    required this.onClick,
    this.height = 48,
    this.isEnabled = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataProviderWidget(
      childBuilderTheme: (context, theme) {
        final content = Center(
          child: AnimatedDefaultTextStyle(
            child: Text(
              text,
            ),
            style: isEnabled ? theme.inverseCoreTextTheme.labelButtonSmall : theme.coreTextTheme.labelButtonSmallDisabled,
            duration: ThemeDurations.shortAnimationDuration(),
          ),
        );
        if (context.isIOSTheme) {
          return TouchFeedBack(
            child: AnimatedContainer(
              height: height,
              child: content,
              color: isEnabled ? theme.colorsTheme.accent : theme.colorsTheme.disabled,
              duration: ThemeDurations.shortAnimationDuration(),
            ),
            onClick: isEnabled ? onClick : null,
          );
        }
        return AnimatedContainer(
          child: TouchFeedBack(
            child: SizedBox(
              height: height,
              child: content,
            ),
            onClick: isEnabled ? onClick : null,
          ),
          color: isEnabled ? theme.colorsTheme.accent : theme.colorsTheme.disabled,
          duration: ThemeDurations.shortAnimationDuration(),
        );
      },
    );
  }
}
