import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/page/SplashPage.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(GetMaterialApp(home: Splash()));
}
