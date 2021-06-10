import 'package:flutter/material.dart';

class NavigatorUtil {
  static pushAndRemoveUntil(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }), (route) => false);
  }
}
