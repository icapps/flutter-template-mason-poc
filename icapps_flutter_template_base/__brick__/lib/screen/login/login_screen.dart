import 'package:flutter/material.dart';
import 'package:{{project_name}}/navigator/main_navigator.dart';
import 'package:{{project_name}}/navigator/mixin/error_navigator.dart';
import 'package:{{project_name}}/navigator/route_names.dart';
import 'package:{{project_name}}/styles/theme_dimens.dart';
import 'package:{{project_name}}/util/keys.dart';
import 'package:{{project_name}}/viewmodel/login/login_viewmodel.dart';
import 'package:{{project_name}}/widget/general/status_bar.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_button.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_input_field.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_progress_indicator.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = RouteNames.loginScreen;

  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

@visibleForTesting
class LoginScreenState extends State<LoginScreen> with ErrorNavigatorMixin implements LoginNavigator {
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;

    return ProviderWidget<LoginViewModel>(
      create: () => GetIt.I()..init(this),
      childBuilder: (context, theme, _) => Consumer<LoginViewModel>(
        builder: (context, viewModel, child) => StatusBar.animated(
          isDarkStyle: (brightness != Brightness.dark),
          child: Scaffold(
            backgroundColor: theme.colorsTheme.background,
            body: SafeArea(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(ThemeDimens.padding16),
                child: Column(
                  children: [
                    Container(height: ThemeDimens.padding16),
                    Text(
                      'Login',
                      style: theme.coreTextTheme.titleNormal,
                      textAlign: TextAlign.center,
                    ),
                    Container(height: ThemeDimens.padding32),
                    Text(
                      'Just fill in some text. There is no validator for the login',
                      style: theme.coreTextTheme.labelButtonSmall,
                    ),
                    Container(height: ThemeDimens.padding32),
                    {{project_name.pascalCase()}}InputField(
                      key: Keys.emailInput,
                      enabled: !viewModel.isLoading,
                      onChanged: viewModel.onEmailUpdated,
                      hint: 'Email',
                    ),
                    Container(height: ThemeDimens.padding16),
                    {{project_name.pascalCase()}}InputField(
                      key: Keys.passwordInput,
                      enabled: !viewModel.isLoading,
                      onChanged: viewModel.onPasswordUpdated,
                      hint: 'Password',
                    ),
                    Container(height: ThemeDimens.padding16),
                    if (viewModel.isLoading) ...{
                      const {{project_name.pascalCase()}}ProgressIndicator.light(),
                    } else
                      {{project_name.pascalCase()}}Button(
                        key: Keys.loginButton,
                        isEnabled: viewModel.isLoginEnabled,
                        text: 'Login',
                        onClick: viewModel.onLoginClicked,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void goToHome() => MainNavigatorWidget.of(context).goToHome();
}
