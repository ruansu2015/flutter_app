import 'package:flutter/cupertino.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/widget/HorizontalGoodsWidget.dart';

// ignore: must_be_immutable
class HorizontalNoTabGoodsWidget extends StatefulWidget {
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  HorizontalNoTabGoodsWidget(this.footDistance, this.mallPlateContentList);

  @override
  State<StatefulWidget> createState() => _HorizontalNoTabGoodsWidgetState();
}

class _HorizontalNoTabGoodsWidgetState
    extends BaseGetGoodsState<HorizontalNoTabGoodsWidget> {
  @override
  Future<void> initState() async {
    sendRequest(widget.mallPlateContentList[0].recomGoods);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            bottom: double.tryParse(widget.footDistance.toString())),
        child: HorizontalGoodsWidget(goodsList));
  }
}
