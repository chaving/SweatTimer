import 'package:flutter/material.dart';

class AppColors {
  //-----------------------
  // GREY
  static const MaterialColor grey = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      1: Color(0xFFf5f6f7),
      2: Color(0xFFEAECEE),
      3: Color(0xFFD5DADD),
      4: Color(0xFFA9B4BE),
      5: Color(0xFF8396A8),
      6: Color(_greyPrimaryValue),
      7: Color(0xFF475E75),
      8: Color(0xFF354A5F),
      9: Color(0xFF223548),
      10: Color(0xFF1A2733),
      11: Color(0xFF12171C),
    },
  );
  static const int _greyPrimaryValue = 0xFF5B738B;

  //-----------------------
  // RED
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      1: Color(0xFFFFEAF4),
      2: Color(0xFFFFD5EA),
      3: Color(0xFFFFB2D2),
      4: Color(0xFFFF8CB2),
      5: Color(0xFFFF5C77),
      6: Color(_redPrimaryValue),
      7: Color(0xFFD20A0A),
      8: Color(0xFFAA0808),
      9: Color(0xFF840606),
      10: Color(0xFF5A0404),
      11: Color(0xFF350000),
    },
  );
  static const int _redPrimaryValue = 0xFFEE3939;

  //-----------------------
  // MANGO
  static const MaterialColor mango = MaterialColor(
    _mangoPrimaryValue,
    <int, Color>{
      1: Color(0xFFFFF8D6),
      2: Color(0xFFFFF3B8),
      3: Color(0xFFFFDF72),
      4: Color(0xFFFFC933),
      5: Color(0xFFFFB300),
      6: Color(_mangoPrimaryValue),
      7: Color(0xFFC35500),
      8: Color(0xFFA93E00),
      9: Color(0xFF8D2A00),
      10: Color(0xFF6D1900),
      11: Color(0xFF450B00),
    },
  );
  static const int _mangoPrimaryValue = 0xFFE76500;

  //-----------------------
  // GREEN
  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      1: Color(0xFFF5FAE5),
      2: Color(0xFFEBF5CB),
      3: Color(0xFFBDE986),
      4: Color(0xFF97DD40),
      5: Color(0xFF5DC122),
      6: Color(_greenPrimaryValue),
      7: Color(0xFF188918),
      8: Color(0xFF256F3A),
      9: Color(0xFF1E592F),
      10: Color(0xFF164323),
      11: Color(0xFF0E2B16),
    },
  );
  static const int _greenPrimaryValue = 0xFF36A41D;

  //-----------------------
  // TEAL
  static const MaterialColor teal = MaterialColor(
    _tealPrimaryValue,
    <int, Color>{
      1: Color(0xFFDAFDF5),
      2: Color(0xFFC2FCEE),
      3: Color(0xFF64EDD2),
      4: Color(0xFF2CE0BF),
      5: Color(0xFF00CEAC),
      6: Color(_tealPrimaryValue),
      7: Color(0xFF07838F),
      8: Color(0xFF046C7A),
      9: Color(0xFF035663),
      10: Color(0xFF02414C),
      11: Color(0xFF012931),
    },
  );
  static const int _tealPrimaryValue = 0xFF049F9A;

  //-----------------------
  // BLUE
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      1: Color(0xFFEBF8FF),
      2: Color(0xFFD1EFFF),
      3: Color(0xFFA6E0FF),
      4: Color(0xFF89D1FF),
      5: Color(0xFF4DB1FF),
      6: Color(_bluePrimaryValue),
      7: Color(0xFF0070F2),
      8: Color(0xFF0057D2),
      9: Color(0xFF0040B0),
      10: Color(0xFF002A86),
      11: Color(0xFF00144A),
    },
  );
  static const int _bluePrimaryValue = 0xFF1B90FF;

  //-----------------------
  // INDIGO
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      1: Color(0xFFF1ECFF),
      2: Color(0xFFE2D8FF),
      3: Color(0xFFD3B6FF),
      4: Color(0xFFB894FF),
      5: Color(0xFF9B76FF),
      6: Color(_indigoPrimaryValue),
      7: Color(0xFF5D36FF),
      8: Color(0xFF470CED),
      9: Color(0xFF2C13AD),
      10: Color(0xFF1C0C6E),
      11: Color(0xFF0E0637),
    },
  );
  static const int _indigoPrimaryValue = 0xFF7858FF;

  //-----------------------
  // PINK
  static const MaterialColor pink = MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      1: Color(0xFFFFF0FA),
      2: Color(0xFFFFDCF3),
      3: Color(0xFFFFAFED),
      4: Color(0xFFFF8AF0),
      5: Color(0xFFF65AF2),
      6: Color(_pinkPrimaryValue),
      7: Color(0xFFCC00DC),
      8: Color(0xFFA100C2),
      9: Color(0xFF7800A4),
      10: Color(0xFF510080),
      11: Color(0xFF28004A),
    },
  );
  static const int _pinkPrimaryValue = 0xFFF31DED;

  //-----------------------
  // Raspberry
  static const MaterialColor raspberry = MaterialColor(
    _raspberryPrimaryValue,
    <int, Color>{
      1: Color(0xFFFFF0F5),
      2: Color(0xFFFFDCE8),
      3: Color(0xFFFECBDA),
      4: Color(0xFFFEADC8),
      5: Color(0xFFFE83AE),
      6: Color(_raspberryPrimaryValue),
      7: Color(0xFFDF1278),
      8: Color(0xFFBA066C),
      9: Color(0xFF9B015D),
      10: Color(0xFF71014B),
      11: Color(0xFF510136),
    },
  );
  static const int _raspberryPrimaryValue = 0xFFFA4F96;
}

class MaterialColor extends ColorSwatch<int> {
  const MaterialColor(super.primary, super.swatch);
  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade4 => this[4]!;
  Color get shade5 => this[5]!;
  Color get shade6 => this[6]!;
  Color get shade7 => this[7]!;
  Color get shade8 => this[8]!;
  Color get shade9 => this[9]!;
  Color get shade10 => this[10]!;
  Color get shade11 => this[11]!;
}
