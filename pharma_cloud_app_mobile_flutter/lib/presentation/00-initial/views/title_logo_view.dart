import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';
import 'package:pharma_cloud_app_mobile_flutter/presentation/presentation.dart';

/// Clase - Widget que representa la vista del logo y el título de la app
class TitleLogoView extends StatelessWidget {
  const TitleLogoView({
    super.key,
    required this.heightCurrentScreen,
    required this.widthCurrentScreen,
    required this.reponsiveSizeScreen,
  });

  // Alto de la pantalla actual
  final double heightCurrentScreen;
  // Ancho de la pantalla actual
  final double widthCurrentScreen;
  // Utilidad para el tamaño responsive
  final ResponsiveSizeUtil reponsiveSizeScreen;

  final String _routeLogo = 'assets/images/svg/icon_base.svg';

  @override
  Widget build(BuildContext context) {
    final height = heightCurrentScreen * 0.4;
    final width = widthCurrentScreen;

    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LogoGlobalWidget(
            routeSVG: _routeLogo,
            baseWidth: width,
            baseHeight: height * 0.6,
            showColorBackground: true,
          ),
          Text('data'),
        ],
      ),
    );
  }
}
