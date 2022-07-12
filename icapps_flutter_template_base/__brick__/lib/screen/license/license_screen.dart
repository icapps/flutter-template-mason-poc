import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{project_name}}/navigator/mixin/back_navigator.dart';
import 'package:{{project_name}}/navigator/route_names.dart';
import 'package:{{project_name}}/styles/theme_dimens.dart';
import 'package:{{project_name}}/viewmodel/license/license_viewmodel.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_back_button.dart';
import 'package:{{project_name}}/widget/provider/provider_widget.dart';
import 'package:get_it/get_it.dart';

class LicenseScreen extends StatefulWidget {
  static const String routeName = RouteNames.licenseScreen;

  const LicenseScreen({
    Key? key,
  }) : super(key: key);

  @override
  LicenseScreenState createState() => LicenseScreenState();
}

@visibleForTesting
class LicenseScreenState extends State<LicenseScreen> with BackNavigatorMixin implements LicenseNavigator {
  @override
  Widget build(BuildContext context) {
    return ProviderWidget<LicenseViewModel>(
      consumerWithThemeAndLocalization: (context, viewModel, child, _, localization) => Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: {{project_name.pascalCase()}}BackButton.light(onClick: viewModel.onBackClicked),
          title: Text(localization.debugLicensesTitle),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(ThemeDimens.padding16),
          itemCount: viewModel.licenses.length,
          itemBuilder: (context, index) {
            final item = viewModel.licenses[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(ThemeDimens.padding16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Container(height: ThemeDimens.padding8),
                    Text(
                      item.license,
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      create: () => GetIt.I()..init(this),
    );
  }
}
