import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';

/// Este widget ejecuta la app en modo desarrollo
class DevelopmentMain extends StatelessWidget {
  const DevelopmentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      theme: appTheme,
      routerConfig: appRouter,
    );
  }
}
