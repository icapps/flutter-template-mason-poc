import 'package:flutter/material.dart';
import 'package:{{project_name}}/styles/theme_colors.dart';
import 'package:{{project_name}}/styles/theme_fonts.dart';
import 'package:{{project_name}}/util/env/flavor_config.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class {{project_name.pascalCase()}}ThemeData {
{{project_name.pascalCase()}}ThemeData._();

  static final _darkThemeData = ThemeData(
    fontFamily: ThemeFonts.body,
    primaryColor: ThemeColors.primary,
    colorScheme: const ColorScheme(
      primary: ThemeColors.primary,
      primaryContainer: ThemeColors.primaryDark,
      onPrimary: ThemeColors.white,
      secondary: ThemeColors.accent,
      secondaryContainer: ThemeColors.accent,
      onSecondary: ThemeColors.white,
      surface: ThemeColors.backgroundGrey,
      onBackground: ThemeColors.primary,
      onSurface: ThemeColors.primary,
      background: ThemeColors.backgroundGrey,
      onError: ThemeColors.primaryDark,
      brightness: Brightness.light,
      error: ThemeColors.error,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ThemeColors.accent,
      selectionHandleColor: ThemeColors.accent,
      selectionColor: ThemeColors.accent.withOpacity(0.4),
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: const CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: isInTest ? const FadeUpwardsPageTransitionsBuilder() : BaseThemeData.getCorrectPageTransitionBuilder(OsInfo.instance),
      },
    ),
  );

  static final _lightThemeData = _darkThemeData.copyWith();

  static ThemeData darkTheme(TargetPlatform? targetPlatform) {
    return _darkThemeData.copyWith(platform: targetPlatform);
  }

  static ThemeData lightTheme(TargetPlatform? targetPlatform) {
    return _lightThemeData.copyWith(platform: targetPlatform);
  }
}

class {{project_name.pascalCase()}}TextTheme {
  final TextStyle titleHuge;
  final TextStyle titleBig;
  final TextStyle titleNormal;
  final TextStyle titleSmall;

  final TextStyle titleListItem;

  final TextStyle labelButtonBig;
  final TextStyle labelButtonBigDisabled;
  final TextStyle labelButtonSmall;
  final TextStyle labelButtonSmallDisabled;

  final TextStyle bodyNormal;
  final TextStyle bodySmall;
  final TextStyle bodyUltraSmall;
  final TextStyle infoBodySubHeader;
  final TextStyle bodyBig;

  const {{project_name.pascalCase()}}TextTheme({
    required this.titleHuge,
    required this.titleBig,
    required this.titleNormal,
    required this.titleSmall,
    required this.titleListItem,
    required this.labelButtonBig,
    required this.labelButtonBigDisabled,
    required this.labelButtonSmall,
    required this.labelButtonSmallDisabled,
    required this.bodyNormal,
    required this.bodySmall,
    required this.bodyUltraSmall,
    required this.infoBodySubHeader,
    required this.bodyBig,
  });
}

class {{project_name.pascalCase()}}TextThemeExceptions {
  const {{project_name.pascalCase()}}TextThemeExceptions();
}

class {{project_name.pascalCase()}}ColorsTheme {
  final Color text;
  final Color inverseText;
  final Color disabledButtonText;
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color background;
  final Color inverseBackground;
  final Color inputFieldFill;
  final Color disabled;
  final Color icon;
  final Color inverseIcon;
  final Color inverseProgressIndicator;
  final Color progressIndicator;

  const {{project_name.pascalCase()}}ColorsTheme({
    required this.text,
    required this.inverseText,
    required this.disabledButtonText,
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.background,
    required this.inverseBackground,
    required this.inputFieldFill,
    required this.disabled,
    required this.icon,
    required this.inverseIcon,
    required this.inverseProgressIndicator,
    required this.progressIndicator,
  });
}

class {{project_name.pascalCase()}}Theme {
  final {{project_name.pascalCase()}}TextTheme coreTextTheme;
  final {{project_name.pascalCase()}}TextTheme inverseCoreTextTheme;
  final {{project_name.pascalCase()}}TextTheme accentTextTheme;
  final {{project_name.pascalCase()}}TextThemeExceptions exceptionsTextTheme;
  final {{project_name.pascalCase()}}ColorsTheme colorsTheme;

  static final _instanceDark = _fromColorTheme(
    colorTheme: const {{project_name.pascalCase()}}ColorsTheme(
      text: ThemeColors.white,
      inverseText: ThemeColors.black,
      disabledButtonText: ThemeColors.lightGrey,
      primary: ThemeColors.primary,
      accent: ThemeColors.accent,
      secondary: ThemeColors.white,
      background: ThemeColors.primary,
      inverseBackground: ThemeColors.white,
      inputFieldFill: ThemeColors.white,
      disabled: ThemeColors.disabledGrey,
      icon: ThemeColors.white,
      inverseIcon: ThemeColors.black,
      progressIndicator: ThemeColors.primary,
      inverseProgressIndicator: ThemeColors.white,
    ),
  );

  static final _instanceLight = _fromColorTheme(
    colorTheme: const {{project_name.pascalCase()}}ColorsTheme(
      text: ThemeColors.black,
      inverseText: ThemeColors.white,
      disabledButtonText: ThemeColors.lightGrey,
      primary: ThemeColors.primary,
      accent: ThemeColors.accent,
      secondary: ThemeColors.black,
      background: ThemeColors.white,
      inverseBackground: ThemeColors.white,
      inputFieldFill: ThemeColors.white,
      disabled: ThemeColors.disabledGrey,
      icon: ThemeColors.white,
      inverseIcon: ThemeColors.black,
      progressIndicator: ThemeColors.primary,
      inverseProgressIndicator: ThemeColors.white,
    ),
  );

  static {{project_name.pascalCase()}}Theme _fromColorTheme({required {{project_name.pascalCase()}}ColorsTheme colorTheme}) => {{project_name.pascalCase()}}Theme._(
        colorsTheme: colorTheme,
        coreTextTheme: {{project_name.pascalCase()}}TextTheme(
          titleHuge: TextStyle(fontSize: 40, color: colorTheme.text, fontFamily: ThemeFonts.title, height: 1.2),
          titleBig: TextStyle(fontSize: 30, color: colorTheme.text, fontFamily: ThemeFonts.title, height: 1.2),
          titleNormal: TextStyle(fontSize: 24, color: colorTheme.text, fontFamily: ThemeFonts.title),
          titleSmall: TextStyle(fontSize: 18, color: colorTheme.text, fontFamily: ThemeFonts.title),
          titleListItem: TextStyle(fontSize: 18, color: colorTheme.text, fontFamily: ThemeFonts.title, fontWeight: FontWeight.bold),
          labelButtonBig: TextStyle(fontSize: 16, color: colorTheme.text, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonBigDisabled: TextStyle(fontSize: 16, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmall: TextStyle(fontSize: 14, color: colorTheme.text, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmallDisabled: TextStyle(fontSize: 14, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          bodyBig: TextStyle(fontSize: 18, color: colorTheme.text, fontFamily: ThemeFonts.body),
          bodyNormal: TextStyle(fontSize: 16, color: colorTheme.text, fontFamily: ThemeFonts.body),
          bodySmall: TextStyle(fontSize: 14, color: colorTheme.text, fontFamily: ThemeFonts.body),
          bodyUltraSmall: TextStyle(fontSize: 12, color: colorTheme.text, fontFamily: ThemeFonts.body),
          infoBodySubHeader: TextStyle(fontSize: 14, color: colorTheme.text, fontFamily: ThemeFonts.body, fontWeight: FontWeight.w600),
        ),
        inverseCoreTextTheme: {{project_name.pascalCase()}}TextTheme(
          titleHuge: TextStyle(fontSize: 40, color: colorTheme.inverseText, fontFamily: ThemeFonts.title, height: 1.2),
          titleBig: TextStyle(fontSize: 30, color: colorTheme.inverseText, fontFamily: ThemeFonts.title, height: 1.2),
          titleNormal: TextStyle(fontSize: 24, color: colorTheme.inverseText, fontFamily: ThemeFonts.title),
          titleSmall: TextStyle(fontSize: 18, color: colorTheme.inverseText, fontFamily: ThemeFonts.title),
          titleListItem: TextStyle(fontSize: 18, color: colorTheme.inverseText, fontFamily: ThemeFonts.title, fontWeight: FontWeight.bold),
          labelButtonBig: TextStyle(fontSize: 16, color: colorTheme.inverseText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonBigDisabled: TextStyle(fontSize: 16, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmall: TextStyle(fontSize: 14, color: colorTheme.inverseText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmallDisabled: TextStyle(fontSize: 14, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          bodyBig: TextStyle(fontSize: 18, color: colorTheme.inverseText, fontFamily: ThemeFonts.body),
          bodyNormal: TextStyle(fontSize: 16, color: colorTheme.inverseText, fontFamily: ThemeFonts.body),
          bodySmall: TextStyle(fontSize: 14, color: colorTheme.inverseText, fontFamily: ThemeFonts.body),
          bodyUltraSmall: TextStyle(fontSize: 12, color: colorTheme.inverseText, fontFamily: ThemeFonts.body),
          infoBodySubHeader: TextStyle(fontSize: 14, color: colorTheme.inverseText, fontFamily: ThemeFonts.body, fontWeight: FontWeight.w600),
        ),
        accentTextTheme: {{project_name.pascalCase()}}TextTheme(
          titleHuge: TextStyle(fontSize: 40, color: colorTheme.accent, fontFamily: ThemeFonts.title, height: 1.2),
          titleBig: TextStyle(fontSize: 30, color: colorTheme.accent, fontFamily: ThemeFonts.title, height: 1.2),
          titleNormal: TextStyle(fontSize: 24, color: colorTheme.accent, fontFamily: ThemeFonts.title),
          titleSmall: TextStyle(fontSize: 18, color: colorTheme.accent, fontFamily: ThemeFonts.title),
          titleListItem: TextStyle(fontSize: 18, color: colorTheme.accent, fontFamily: ThemeFonts.title, fontWeight: FontWeight.bold),
          labelButtonBig: TextStyle(fontSize: 16, color: colorTheme.accent, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonBigDisabled: TextStyle(fontSize: 16, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmall: TextStyle(fontSize: 14, color: colorTheme.accent, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          labelButtonSmallDisabled: TextStyle(fontSize: 14, color: colorTheme.disabledButtonText, fontFamily: ThemeFonts.button, fontWeight: FontWeight.bold),
          bodyBig: TextStyle(fontSize: 18, color: colorTheme.accent, fontFamily: ThemeFonts.body),
          bodyNormal: TextStyle(fontSize: 16, color: colorTheme.accent, fontFamily: ThemeFonts.body),
          bodySmall: TextStyle(fontSize: 14, color: colorTheme.accent, fontFamily: ThemeFonts.body),
          bodyUltraSmall: TextStyle(fontSize: 12, color: colorTheme.accent, fontFamily: ThemeFonts.body),
          infoBodySubHeader: TextStyle(fontSize: 14, color: colorTheme.accent, fontFamily: ThemeFonts.body, fontWeight: FontWeight.w600),
        ),
        exceptionsTextTheme: const {{project_name.pascalCase()}}TextThemeExceptions(),
      );

  const {{project_name.pascalCase()}}Theme._({
    required this.coreTextTheme,
    required this.inverseCoreTextTheme,
    required this.accentTextTheme,
    required this.exceptionsTextTheme,
    required this.colorsTheme,
  });

  static {{project_name.pascalCase()}}Theme of(BuildContext context, {bool forceDark = false, bool forceLight = false}) {
    if (forceDark) return _instanceDark;
    if (forceLight) return _instanceLight;

    final theme = FlavorConfig.instance.themeMode;
    if (theme == ThemeMode.dark) {
      return _instanceDark;
    } else if (theme == ThemeMode.light) {
      return _instanceLight;
    }
    final brightness = MediaQuery.of(context).platformBrightness;

    if (brightness == Brightness.dark) return _instanceDark;

    return _instanceLight;
  }
}
