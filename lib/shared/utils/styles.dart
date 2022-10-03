import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle bottomNavLabelsStyle() {
  return GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.6,
  );
}

TextStyle titleH1Montserrat32Style(Color? color) {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: color,
  );
}

TextStyle totalBalanceUserStyle() {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
}

TextStyle subtitleGreyStyle() {
  return GoogleFonts.lato(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: colorTextGrey,
  );
}

TextStyle titleAppBarStyle() {
  return GoogleFonts.beVietnamPro(
    fontSize: 21,
    fontWeight: FontWeight.w700,
    color: colorTextBlack,
  );
}

TextStyle textInfoRowsDetailsStyle() {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: colorTextGrey,
  );
}

TextStyle valuesInfoRowsDetailsStyle() {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: colorTextBlack,
  );
}

TextStyle valueVariationStyle(double variation) {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: (variation == 0)
        ? colorTextGrey
        : ((variation > 0) ? greenPositiveVariation : redNegativeVariation),
  );
}

TextStyle textHistoryFilterChartStyle(bool isSelected) {
  return GoogleFonts.sourceSansPro(
    color: isSelected ? colorTextBlack : colorTextGrey,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}

TextStyle titleH1BlackStyle() {
  return GoogleFonts.sourceSansPro(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: colorTextBlack,
  );
}
