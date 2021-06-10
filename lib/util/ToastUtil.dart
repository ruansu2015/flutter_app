import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  static showToast(String msg) {
    _showToast(msg, ToastGravity.CENTER);
  }

  static _showToast(String msg, ToastGravity toastGravity) {
    Fluttertoast.showToast(
        msg: msg,
        fontSize: 14,
        gravity: toastGravity,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Constant.X99000000,
        textColor: Colors.white);
  }
}
