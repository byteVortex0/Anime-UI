import 'package:anime/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font_weight_helper.dart';

class StyleManager {
  static TextStyle white14Semibold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static TextStyle lightestGray14Regular = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.lightestGray,
  );

  static TextStyle white11Medium = GoogleFonts.raleway(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );

  static TextStyle lightPurple12Bold = GoogleFonts.raleway(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.lightPurple,
  );

  static TextStyle lightPurple14Bold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.lightPurple,
  );

  static TextStyle white14Bold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle white16Bold = GoogleFonts.raleway(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle brand14Bold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.brandColor,
  );

  static TextStyle neutralGray14Medium = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorManager.neutralGray,
  );

  static TextStyle dark24Bold = GoogleFonts.raleway(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.darkColor,
  );

  static TextStyle dark22Bold = GoogleFonts.raleway(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.darkColor,
  );

  static TextStyle black24Bold = GoogleFonts.raleway(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle dark14Bold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManager.darkColor,
  );

  static TextStyle dark16Semibold = GoogleFonts.raleway(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.darkColor,
  );

  static TextStyle grey12Medium = GoogleFonts.raleway(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorManager.gray,
  );

  static TextStyle grey14Semibold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.gray,
  );

  static TextStyle lightBlack12Semibold = GoogleFonts.raleway(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.lightBlack,
  );

  static TextStyle black40Regular = GoogleFonts.newRocker(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
}
