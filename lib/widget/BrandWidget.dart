import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/entity/mall_entity.dart';

// ignore: must_be_immutable
class BrandWidget extends StatelessWidget {
  String title;
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  BrandWidget(this.title, this.footDistance, this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    if (mallPlateContentList == null || mallPlateContentList.isEmpty)
      return Container();
    return Card(
      margin: EdgeInsets.only(bottom: double.tryParse(footDistance.toString())),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Constant.ff333333),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        _getImage(0),
                        SizedBox(height: 4),
                        _getImage(1)
                      ],
                    ),
                  ),
                  SizedBox(width: 4),
                  Flexible(flex: 2, child: _getImage(2)),
                  SizedBox(width: 4),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        _getImage(3),
                        SizedBox(height: 4),
                        _getImage(4)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getImage(int index) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: ClipRRect(
        borderRadius: index == 0
            ? BorderRadius.only(topLeft: Radius.circular(10))
            : index == 1
                ? BorderRadius.only(bottomLeft: Radius.circular(10))
                : index == 3
                    ? BorderRadius.only(topRight: Radius.circular(10))
                    : index == 4
                        ? BorderRadius.only(bottomRight: Radius.circular(10))
                        : BorderRadius.only(bottomRight: Radius.circular(0)),
        child: ExtendedImage.network(
          mallPlateContentList[index].imageUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
