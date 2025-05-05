import 'package:flutter/material.dart';

/// Esta clase es para obtener los iconos personalizados
class CustomIcons {
  /// Constructor privado para evitar la instanciación de la clase
  CustomIcons._();

  /// Variable para almacenar el nombre de la fuente
  static const _kFontFam = 'CustomIcons';

  // icono base
  static const IconData iconBase = IconData(0xe800, fontFamily: _kFontFam);
  // icono de alerta
  static const IconData iconAlert = IconData(0xe801, fontFamily: _kFontFam);
  // icono de error
  static const IconData iconErro = IconData(0xe802, fontFamily: _kFontFam);
  // icono de buena
  static const IconData iconGood = IconData(0xe803, fontFamily: _kFontFam);
}
