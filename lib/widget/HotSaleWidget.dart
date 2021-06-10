
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/widget/RecommendGoodsWidget.dart';

// ignore: must_be_immutable
class HotSaleWidget extends StatefulWidget {
  String title;
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  HotSaleWidget(this.title, this.footDistance, this.mallPlateContentList);

  @override
  State<StatefulWidget> createState() => _HotSaleWidgetState();
}

class _HotSaleWidgetState extends BaseGetGoodsState<HotSaleWidget> {
  @override
  void initState() {
    sendRequest(widget.mallPlateContentList[0].recomGoods);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: double.tryParse(widget.footDistance.toString())),
      child: Column(
        children: [
          Text(widget.title,
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().getSp(15),
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          widget.mallPlateContentList.length <= 1
              ? Container()
              : DefaultTabController(
                  length: widget.mallPlateContentList.length,
                  child: TabBar(
                      onTap: (int index) {
                        sendRequest(
                            widget.mallPlateContentList[index].recomGoods);
                      },
                      tabs: widget.mallPlateContentList
                          .map((e) => Tab(text: e.contentName))
                          .toList(),
                      isScrollable: true,
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                      unselectedLabelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 13))),
          RecommendGoodsWidget(null, goodsList)
        ],
      ),
    );
  }
}
