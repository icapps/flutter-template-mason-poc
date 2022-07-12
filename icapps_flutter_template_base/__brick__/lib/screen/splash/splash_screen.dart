import 'package:flutter/material.dart';
import 'package:{{project_name}}/navigator/main_navigator.dart';
import 'package:{{project_name}}/navigator/route_names.dart';
import 'package:{{project_name}}/viewmodel/splash/splash_viewmodel.dart';
import 'package:{{project_name}}/widget/general/status_bar.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_progress_indicator.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = RouteNames.splashScreen;

  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

@visibleForTesting
class SplashScreenState extends State<SplashScreen> implements SplashNavigator {
  @override
  Widget build(BuildContext context) {
    return ProviderWidget<SplashViewModel>(
      create: () => GetIt.I()..init(this),
      consumerWithThemeAndLocalization: (context, viewModel, child, theme, localization) => StatusBar.light(
        child: Scaffold(
          backgroundColor: theme.colorsTheme.primary,
          body: const Center(
            child: {{project_name.pascalCase()}}ProgressIndicator.light(),
          ),
        ),
      ),
    );
  }

  @override
  void goToHome() => MainNavigatorWidget.of(context).goToHome();

  @override
  void goToLogin() => MainNavigatorWidget.of(context).goToLogin();
}
