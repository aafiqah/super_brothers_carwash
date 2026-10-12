import 'package:flutter/widgets.dart';

class Responsive {
  /// Use shortestSide for better device detection (tablet, foldable, split screen)
  static double _shortestSide(BuildContext context) =>
      MediaQuery.of(context).size.shortestSide;

  static Orientation _orientation(BuildContext context) =>
      MediaQuery.of(context).orientation;

  // Device types
  static bool isPhone(BuildContext context) => _shortestSide(context) < 600;

  static bool isTablet(BuildContext context) =>
      _shortestSide(context) >= 600 && _shortestSide(context) < 1024;

  static bool isLargeTablet(BuildContext context) =>
      _shortestSide(context) >= 1024;

  // Orientation
  static bool isLandscape(BuildContext context) =>
      _orientation(context) == Orientation.landscape;

  static bool isPortrait(BuildContext context) =>
      _orientation(context) == Orientation.portrait;

  // Tablet(android version) + orientation
  static bool isTabletLandscape(BuildContext context) =>
      isTablet(context) && isLandscape(context);

  static bool isTabletPortrait(BuildContext context) =>
      isTablet(context) && isPortrait(context);

  // Large tablet(ipad version) + orientation
  static bool isLargeTabletLandscape(BuildContext context) =>
      isLargeTablet(context) && isLandscape(context);

  static bool isLargeTabletPortrait(BuildContext context) =>
      isLargeTablet(context) && isPortrait(context);
}

class R {
  static T value<T>({
    required BuildContext context,
    required T phone,
    T? tabletPortrait,
    T? tabletLandscape,
    T? largeTabletPortrait,
    T? largeTabletLandscape,
  }) {
    // Large tablet (priority first)
    if (Responsive.isLargeTabletLandscape(context) &&
        largeTabletLandscape != null) {
      return largeTabletLandscape;
    }

    if (Responsive.isLargeTabletPortrait(context) &&
        largeTabletPortrait != null) {
      return largeTabletPortrait;
    }

    // Tablet
    if (Responsive.isTabletLandscape(context) &&
        tabletLandscape != null) {
      return tabletLandscape;
    }

    if (Responsive.isTabletPortrait(context) &&
        tabletPortrait != null) {
      return tabletPortrait;
    }

    // Default → phone
    return phone;
  }
}