import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';

class ProductionMain extends StatelessWidget {
  const ProductionMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Material App', routerConfig: appRouter);
  }
}
