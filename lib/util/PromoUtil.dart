import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';

class PromoUtil {
  static Color getPromoColor(int type) {
    switch (type) {
      case 1:
        return Color(0xffc21926);
      case 2:
        return Color(0xffffc59b);
      case 3:
        return Color(0xff32c5ff);
      case 4:
        return Color(0xffff7e7e);
      case 5:
        return Color(0xff0091ff);
      case 6:
        return Constant.FF4554;
      case 7:
        return Color(0xfff7b500);
      default:
        return Color(0xffffc59b);
    }
  }
}
