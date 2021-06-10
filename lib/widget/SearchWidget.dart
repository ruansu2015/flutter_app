import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  String content;

  SearchWidget(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: EdgeInsets.all(3),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Constant.CCCCCC,
          ),
          Text(
            content,
            style: TextStyle(fontSize: 14, color: Constant.CCCCCC),
          )
        ],
      ),
    );
  }
}
