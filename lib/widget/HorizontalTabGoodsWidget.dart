import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/util/NumberUtil.dart';
import 'package:flutterapp/widget/HorizontalGoodsWidget.dart';

// ignore: must_be_immutable
class HorizontalTabGoodsWidget extends StatefulWidget {
  String title;
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  HorizontalTabGoodsWidget(
      this.title, this.footDistance, this.mallPlateContentList);

  @override
  State<StatefulWidget> createState() => _HorizontalTabGoodsWidgetState();
}

class _HorizontalTabGoodsWidgetState
    extends BaseGetGoodsState<HorizontalTabGoodsWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    sendRequest(widget.mallPlateContentList[0].recomGoods);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.mallPlateContentList == null ||
        widget.mallPlateContentList.isEmpty) return Container();
    return Card(
      margin: EdgeInsets.only(
          bottom: double.tryParse(widget.footDistance.toString())),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.title,
                style: TextStyle(
                    color: Constant.ff333333,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            DefaultTabController(
              length: widget.mallPlateContentList.length,
              child: TabBar(
                  onTap: (index) {
                    sendRequest(widget.mallPlateContentList[index].recomGoods);
                  },
                  // controller: _controller,
                  tabs: widget.mallPlateContentList
                      .map((e) => Tab(text: e.contentName))
                      .toList(),
                  isScrollable: true,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  indicatorPadding: EdgeInsets.only(top: 0),
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
            ),
            HorizontalGoodsWidget(goodsList)
          ],
        ),
      ),
    );
  }
}
