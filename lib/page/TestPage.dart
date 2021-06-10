import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TestPage extends StatelessWidget {
  String text;

  TestPage(this.text);

  List<String> _getData() {
    List<String> data = [];
    while (data.length < _getCount()) {
      String item = _getItem();
      if (!data.contains(item)) data.add(item);
    }
    data.sort((String a, String b) {
      return a.compareTo(b);
    });
    return data;
  }

  int _getCount() {
    int result = 1;
    for (int i = text.length; i > 0; i--) {
      result *= i;
    }
    return result;
  }

  String _getItem() {
    String result = '';
    while (result.length < text.length) {
      String s = text[_getRandomIndex()];
      if (!result.contains(s)) result += s;
    }
    return result;
  }

  int _getRandomIndex() {
    return Random().nextInt(text.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: SafeArea(
            child: Expanded(
                child: ListView(
                    children: _getData()
                        .map((e) => GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Center(
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ))
                        .toList()))),
      ),
    );
  }
}
