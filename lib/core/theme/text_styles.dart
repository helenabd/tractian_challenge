import 'package:flutter/material.dart';

import '../core.dart';

class AppTextStyles {
  static const kFontFamilyBrand = 'Roboto';
  static const kFontFamilyLogo = 'BlackOpsOne';

  static const TextStyle logoTextStyle = TextStyle(
    fontFamily: kFontFamilyLogo,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: AppColors.colorFunctionalSoftLight,
    height: 1.5,
  );
  static const TextStyle companiesTextStyle = TextStyle(
    fontFamily: kFontFamilyBrand,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFunctionalSoftLightest,
    height: 1.5,
  );

  static const TextStyle searchHintTextStyle = TextStyle(
    fontFamily: kFontFamilyBrand,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.colorFunctionalSoftDark,
    height: 1.5,
  );

  static const TextStyle filterUnselectedTextStyle = TextStyle(
    fontFamily: kFontFamilyBrand,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFunctionalSoftDarkest,
    height: 1.5,
  );

  static const TextStyle filterSelectedTextStyle = TextStyle(
    fontFamily: kFontFamilyBrand,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFunctionalSoftLightest,
    height: 1.5,
  );

  static const TextStyle assetTextStyle = TextStyle(
    fontFamily: kFontFamilyBrand,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFunctionalSoftLightest,
    height: 1.5,
  );
}
