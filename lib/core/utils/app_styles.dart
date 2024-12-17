import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle styleLight14(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 14,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle styleMedium18(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 18,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 16,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 12,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 14,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular11(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 11,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular20(context) {
    return TextStyle(
      color: const Color(0xFF1A0F91),
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 14,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold14(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 14,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold24(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: 24,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w700,
    );
  }
}

// // sacleFactor
// // responsive font size
// // (min , max) fontsize
// double responsiveFontSize(BuildContext context, {required double fontSize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = fontSize * scaleFactor;

//   double lowerLimit = fontSize * .8;
//   double upperLimit = fontSize * 1.2;

//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor(context) {
//   // var dispatcher = PlatformDispatcher.instance;
//   // var physicalWidth = dispatcher.views.first.physicalSize.width;
//   // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
//   // double width = physicalWidth / devicePixelRatio;
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < SizeConfig.tablet) {
//     return width / 411.42857142857144; //550
//   } else if (width < SizeConfig.desktop) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }
