import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/widget/SearchWidget.dart';
import 'package:flutterapp/widget/TitleImageWidger.dart';

class DiscoveryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF5F5F5),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Row(
              children: <Widget>[
                Expanded(child: SearchWidget('请输入搜索关键字')),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.menu,
                    color: Constant.CCCCCC,
                  ),
                )
              ],
            ),
          ),
          TitleImageWidget(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590407663250&di=fe5098862a8df18055aa60ce9faa79a3&imgtype=0&src=http%3A%2F%2Fnews.chinaxiaokang.com%2Fuploads%2Fimage%2F20170228%2F1488246716141069.jpg',
              '测试',
              '测试'),
        ],
      ),
    );
  }
}
