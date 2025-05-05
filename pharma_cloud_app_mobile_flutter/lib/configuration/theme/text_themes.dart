import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';

/// Clase encargada de manejar los temas de los textos
class TextThemes {
  /// Constructor
  TextThemes({required this.context});

  final BuildContext context;

  ///
  TextStyle get tileOne {
    return TextStyle();
  }

  /// Calcula el TextStyle para los titulos de las tarjetas
  ///
  /// - Retorna el TextStyle
  TextStyle tileCards(double size) {
    return TextStyle(
      color: Color(ColorTheme.textTitleCardColor),
      fontFamily: 'Rubik',
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  /// Calcula el TextStyle para los subtitulos de las tarjetas
  ///
  /// - Retorna el TextStyle
  TextStyle subTileCards(double size) {
    return TextStyle(
      color: Color(ColorTheme.textSubTitleCardColor),
      fontFamily: 'Rubik',
      fontSize: size,
      fontWeight: FontWeight.w300,
    );
  }
}
