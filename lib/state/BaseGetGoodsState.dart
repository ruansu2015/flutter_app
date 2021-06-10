import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/base/BaseState.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';

abstract class BaseGetGoodsState<T extends StatefulWidget>
    extends BaseState<T> {
  List<BaseGoodsEntity> goodsList;

  Future<void> sendRequest(String good) async {
    BaseGoodsList list = await HttpManager.getProductList<BaseGoodsList>(
        ObjectUtil.isEmpty(good) ? '' : good.replaceAll(",", "|"), 0, 20);
    setState(() {
      goodsList = list.xList;
    });
  }
}
