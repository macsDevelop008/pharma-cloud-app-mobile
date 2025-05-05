import 'package:flutter/material.dart';
import 'package:pharma_cloud_app_mobile_flutter/configuration/configuration.dart';

/// Representa un widget global.
///
/// Este widget representa una opción en un listado.
/// Tiene un logo/icono a su lado superior izquiero, y un
/// titulo y sub-titulo al lado inferior derecho.
class MenuIconTitleItemGlobalWidget extends StatelessWidget {
  const MenuIconTitleItemGlobalWidget({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.borderRadiusValue,
    this.shadowColor,
    this.icon,
    this.iconSize,
    this.iconColor,
    required this.title,
    required this.subTitle,
    this.titleSize,
    this.subTitleSize,
    this.onPress,
  });

  /// Ancho base
  final double width;

  /// Alto base
  final double height;

  /// Tamaño del titulo
  final double? titleSize;

  /// Tamaño del subtitulo
  final double? subTitleSize;

  /// Color de fondo
  final Color backgroundColor;

  /// Titulo
  final String title;

  /// Subtitulo
  final String subTitle;

  /// Valor aplicado para redondear los bordes
  final double? borderRadiusValue;

  /// Color de la sombra
  final Color? shadowColor;

  /// Icono
  final IconData? icon;

  /// Tamaño del Icono
  final double? iconSize;

  /// Color del icono
  final Color? iconColor;

  /// Evento al precionar la tarjeta
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    // Ancho del espacio para el icono
    final iconWidthSpace = width * 0.27;
    // Ancho del espacio para el texto
    final textWidthSpace = width - iconWidthSpace;
    // Temas del texto
    final textTheme = TextThemes(context: context);

    return GestureDetector(
      onTap: onPress,
      child: Container(
        //! Ancho y alto
        width: width,
        height: height,
        decoration: BoxDecoration(
          //! Color
          color: backgroundColor,
          //! Bordes redondeados
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadiusValue ?? 15),
          ),
          //! Sombra
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 6,
              spreadRadius: 0.3,
              color:
                  shadowColor ??
                  Color(ColorTheme.primaryColor).withValues(alpha: 0.4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //! Icono/Imagen
            Container(
              height: height,
              width: iconWidthSpace,
              alignment: Alignment.topLeft,
              color: Colors.red.withValues(alpha: 0.0),
              child: Padding(
                padding: EdgeInsets.only(
                  top: height * 0.08,
                  left: iconWidthSpace * 0.1,
                ),
                child: Icon(
                  icon ?? Icons.verified_user,
                  size: iconSize ?? iconWidthSpace * 0.7,
                  color: iconColor ?? Color(ColorTheme.iconCardColor),
                ),
              ),
            ),
            //! Titulo y subtitulo
            Container(
              alignment: Alignment.bottomRight,
              color: Colors.yellow.withValues(alpha: 0.0),
              height: height,
              width: textWidthSpace,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.1,
                  right: textWidthSpace * 0.05,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.end,
                      style: textTheme.tileCards(
                        titleSize ?? textWidthSpace * 0.087,
                      ),
                    ),
                    Text(
                      subTitle,
                      textAlign: TextAlign.end,
                      style: textTheme.subTileCards(
                        subTitleSize ?? textWidthSpace * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
