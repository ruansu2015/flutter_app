import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/page/BaseWidget.dart';
import 'package:flutterapp/page/MainPage.dart';
import 'package:flutterapp/util/NavigatorUtil.dart';
import 'package:get/get.dart';

class Splash extends BaseStatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashPage());
  }
}

class SplashPage extends BaseStatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => MainPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.FF6A6A,
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.2,
                  child: Image(image: AssetImage('images/logo_start.png')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'CopyRight © 2000-2021 m.banggo.com',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            )
          ],
        ));
  }
}
