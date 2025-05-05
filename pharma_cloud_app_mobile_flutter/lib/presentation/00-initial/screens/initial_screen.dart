import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';
import 'package:pharma_cloud_app_mobile_flutter/presentation/presentation.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static const String routeName = 'initial';
  static const String routePath = '/$routeName';

  @override
  Widget build(BuildContext context) {
    //! Inicializa el util para el tamaño responsive de la app
    final responsiveSizeUtil = ResponsiveSizeUtil(context: context);

    //! Alto y ancho de la pantalla
    final double height = responsiveSizeUtil.height(percentageHeightAllSize: 1);
    final double width = responsiveSizeUtil.width(percentageWidthAllSize: 1);

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            //! Vista - Logo y titulo de la app
            TitleLogoView(
              reponsiveSizeScreen: responsiveSizeUtil,
              heightCurrentScreen: height,
              widthCurrentScreen: width,
            ),
            //! Vista - Fondo decoración de la app
            //! Vista - Loading
          ],
        ),
      ),
    );
  }
}
