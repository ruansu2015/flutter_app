import 'package:flutter/material.dart';
import 'package:flutterapp/entity/mall_entity.dart';

class HorizontalTabView extends StatelessWidget {
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  HorizontalTabView(this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 16),
        children: mallPlateContentList
            .map((MallMallPlateContentBeanListMallPlateContentList bean) {
          return Image.network(bean.imageUrl);
        }).toList(),
      ),
    );
  }
}
