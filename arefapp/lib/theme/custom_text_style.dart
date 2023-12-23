import 'package:flutter/material.dart';
import '../utils/app_export.dart';


class CustomTextStyles {
  // Headline text style
  static get headlineMediumBlack => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack90023 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
      );
}

extension on TextStyle {
  TextStyle get alexandria {
    return copyWith(
      fontFamily: 'Alexandria',
    );
  }
}
