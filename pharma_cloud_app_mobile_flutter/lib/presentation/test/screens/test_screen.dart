import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';
import 'package:pharma_cloud_app_mobile_flutter/presentation/global/widgets/menu_icon_title_item_global_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  static const routeName = 'test-screen';
  static const routePath = '/$routeName';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MenuIconTitleItemGlobalWidget(
          width: 360,
          height: 130,
          backgroundColor: Color(ColorTheme.primaryColor),
          title: 'Mi Portafolio',
          subTitle: 'Un vistazo a tu trabajo y experiencia',
        ),
      ),
    );
  }
}
