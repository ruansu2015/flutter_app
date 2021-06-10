import 'package:flutter/cupertino.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/widget/HorizontalGoodsWidget.dart';

// ignore: must_be_immutable
class SpecialActivityWidget extends StatefulWidget {
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  SpecialActivityWidget(this.footDistance, this.mallPlateContentList);

  @override
  State<StatefulWidget> createState() => _SpecialActivityWidgetState();
}

class _SpecialActivityWidgetState
    extends BaseGetGoodsState<SpecialActivityWidget> {
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
          Image(
              image: NetworkImage(ImageUrlUtil.getUrl(
                  widget.mallPlateContentList[0].imageUrl))),
          HorizontalGoodsWidget(goodsList)
        ],
      ),
    );
  }
}
