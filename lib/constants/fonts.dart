import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextStyle kTsRoboto16 = GoogleFonts.roboto(
  fontSize: 16.0,
  letterSpacing: -0.16,
  fontWeight: FontWeight.w300,
  height: 1.44,
  color: kColorWhite9,
);

TextStyle kTsRoboto12 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 12,
    color: kColorBlue6,
    letterSpacing: -0.36,
    fontWeight: FontWeight.w300,
    height: 1.583,
  ),
);

TextStyle kTsRoboto22 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 22,
    color: kColorBlue9,
    fontWeight: FontWeight.w300,
    height: 1,
  ),
);

TextStyle kTsRoboto36 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontSize: 36.0,
    letterSpacing: -1.08,
    fontWeight: FontWeight.w700,
    height: 1.19,
    color: kColorBlue9,
  ),
);

TextStyle kTsNoto26 = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    fontSize: 26.0,
    letterSpacing: -1.04,
    fontWeight: FontWeight.w300,
    height: 1.27,
    color: kColorBlue6,
  ),
);

TextStyle kTsNoto22 = GoogleFonts.notoSans(
  textStyle: const TextStyle(
    fontSize: 22.0,
    letterSpacing: -0.88,
    height: 1.32,
    color: kColorWhite9,
  ),
);
