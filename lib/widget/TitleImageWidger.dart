import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';

class TitleImageWidget extends StatelessWidget {
  String url, title, content;

  TitleImageWidget(this.url, this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
            child: Image.network(
              url,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15,
                  color: Constant.ff333333,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    content,
                    style: TextStyle(fontSize: 12, color: Constant.ff333333),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Constant.FF6A6A,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  padding: EdgeInsets.fromLTRB(11, 6, 11, 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        size: 12,
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Text(
                          '分享',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
