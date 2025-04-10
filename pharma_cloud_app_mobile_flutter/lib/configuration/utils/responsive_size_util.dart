import 'package:flutter/widgets.dart';

/// A utility class to calculate the responsive size of the widgets.
class ResponsiveSizeUtil {
  ResponsiveSizeUtil({required this.context})
    : screenSize = MediaQuery.sizeOf(context);
  final BuildContext context;
  final Size screenSize;

  /// Calculate the width of the widget based on the screen size.
  ///
  /// [percentageWidthAllSize] is the percentage width of the widget for all
  /// screen sizes.
  /// [percentageWidthTablet] is the percentage width of the widget for tablet
  /// screen size.
  /// [percentageWidthMobileLarge] is the percentage width of the widget for
  /// large mobile screen size.
  /// [percentageWidthMobileMedium] is the percentage width of the widget for
  /// medium mobile screen size.
  /// [percentageWidthMobileSmall] is the percentage width of the widget for
  /// small mobile screen size.
  ///
  /// @return the calculated width of the widget. If the percentage width is not
  /// provided for a specific screen size, it will return the full width of the
  ///
  double width({
    double? percentageWidthAllSize,
    double? percentageWidthTablet,
    double? percentageWidthMobileLarge,
    double? percentageWidthMobileMedium,
    double? percentageWidthMobileSmall,
  }) {
    final factor = _calculateWidthFactor(
      screenSize.width,
      percentageWidthAllSize: percentageWidthAllSize,
      percentageWidthTablet: percentageWidthTablet,
      percentageWidthMobileLarge: percentageWidthMobileLarge,
      percentageWidthMobileMedium: percentageWidthMobileMedium,
      percentageWidthMobileSmall: percentageWidthMobileSmall,
    );
    return screenSize.width * factor;
  }

  /// Calculate the height of the widget based on the screen size.
  /// [percentageHeightAllSize] is the percentage height of the widget for all
  /// screen sizes.
  /// [percentageHeightTablet] is the percentage height of the widget for tablet
  /// screen size.
  /// [percentageHeightMobileLarge] is the percentage height of the widget for
  /// large mobile screen size.
  /// [percentageHeightMobileMedium] is the percentage height of the widget for
  /// medium mobile screen size.
  /// [percentageHeightMobileSmall] is the percentage height of the widget for
  /// small mobile screen size.
  ///
  /// @return the calculated height of the widget. If the percentage height is
  /// not provided for a specific screen size, it will return the full height of
  /// the screen.
  double height({
    double? percentageHeightAllSize,
    double? percentageHeightTablet,
    double? percentageHeightMobileLarge,
    double? percentageHeightMobileMedium,
    double? percentageHeightMobileSmall,
  }) {
    final factor = _calculateHeightFactor(
      screenSize.height,
      percentageHeightAllSize: percentageHeightAllSize,
      percentageHeightTablet: percentageHeightTablet,
      percentageHeightMobileLarge: percentageHeightMobileLarge,
      percentageHeightMobileMedium: percentageHeightMobileMedium,
      percentageHeightMobileSmall: percentageHeightMobileSmall,
    );
    return screenSize.height * factor;
  }

  /// Calculate the width factor based on the screen size.
  double _calculateWidthFactor(
    double currentWidth, {
    double? percentageWidthAllSize,
    double? percentageWidthTablet,
    double? percentageWidthMobileLarge,
    double? percentageWidthMobileMedium,
    double? percentageWidthMobileSmall,
  }) {
    if (percentageWidthAllSize != null) return percentageWidthAllSize;
    if (currentWidth >= 600) {
      return percentageWidthTablet ?? 1.0;
    } else if (currentWidth >= 400 && currentWidth < 600) {
      return percentageWidthMobileLarge ?? 1.0;
    } else if (currentWidth >= 380 && currentWidth < 400) {
      return percentageWidthMobileMedium ?? 1.0;
    } else {
      return percentageWidthMobileSmall ?? 1.0;
    }
  }

  /// Calculate the height factor based on the screen size.
  double _calculateHeightFactor(
    double currentHeight, {
    double? percentageHeightAllSize,
    double? percentageHeightTablet,
    double? percentageHeightMobileLarge,
    double? percentageHeightMobileMedium,
    double? percentageHeightMobileSmall,
  }) {
    if (percentageHeightAllSize != null) return percentageHeightAllSize;

    if (currentHeight >= 1000) {
      return percentageHeightTablet ?? 1.0;
    } else if (currentHeight >= 900 && currentHeight < 1000) {
      return percentageHeightMobileLarge ?? 1.0;
    } else if (currentHeight >= 700 && currentHeight < 900) {
      return percentageHeightMobileMedium ?? 1.0;
    } else {
      return percentageHeightMobileSmall ?? 1.0;
    }
  }
}
