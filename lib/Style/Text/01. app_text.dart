import 'package:flutter/material.dart';

class KCustomTextStyle {
  static TextStyle kBold(BuildContext context, double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.black, // 기본 색상을 설정하거나 매개변수로 받아 사용할 수 있습니다.
    );
  }

  static TextStyle kRegular(BuildContext context, double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.normal,
      color: Colors.black, // 기본 색상을 설정하거나 매개변수로 받아 사용할 수 있습니다.
    );
  }

// 필요에 따라 더 많은 스타일을 추가할 수 있습니다.
}
