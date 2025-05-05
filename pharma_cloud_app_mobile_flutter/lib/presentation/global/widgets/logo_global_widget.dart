import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Clase - Widget que representa la vista del logo y el título de la app
class LogoGlobalWidget extends StatelessWidget {
  const LogoGlobalWidget({
    super.key,
    required this.routeSVG,
    required this.baseWidth,
    required this.baseHeight,
    this.showColorBackground,
  });

  final String routeSVG;
  final double baseWidth;
  final double baseHeight;
  final bool? showColorBackground;

  @override
  Widget build(BuildContext context) {
    // Tema de la app
    final appTheme = Theme.of(context);
    // Tamaño del logo y la sombra
    final sizeLogo = baseHeight * 0.7;

    return Container(
      width: baseWidth,
      height: baseHeight,
      color:
          showColorBackground != null && showColorBackground!
              ? Colors.green
              : Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Logo - Sombra
          Positioned(
            top: baseHeight * 0.17,
            child: SvgPicture.asset(
              routeSVG,
              height: sizeLogo,
              colorFilter: ColorFilter.mode(
                appTheme.primaryColor.withValues(alpha: 0.07),
                BlendMode.srcIn,
              ),
            ),
          ),
          // Logo
          SvgPicture.asset(routeSVG, height: sizeLogo),
        ],
      ),
    );
  }
}
