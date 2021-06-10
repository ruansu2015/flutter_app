import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/util/ForwardUtil.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/util/NumberUtil.dart';

import '../Constant.dart';

// ignore: must_be_immutable
class HorizontalGoodsWidget extends StatelessWidget {
  List<BaseGoodsEntity> _list;

  HorizontalGoodsWidget(this._list);

  @override
  Widget build(BuildContext context) {
    return ObjectUtil.isEmptyList(_list)
        ? Container(
            height: 100,
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ObjectUtil.isEmptyList(_list)
                ? Container()
                : Row(children: _list.map((e) => _getItem(e)).toList()),
          );
  }

  Widget _getItem(BaseGoodsEntity entity) {
    return GestureDetector(
      onTap: () {
        ForwardUtil.forwardGoodsDetail(entity.storeId, entity.productCode);
      },
      child: Row(
        children: [
          Column(
            children: <Widget>[
              ExtendedImage.network(ImageUrlUtil.getUrl(entity.imgUrl),
                  width: ScreenUtil.getInstance().screenWidth / 3,
                  height: ScreenUtil.getInstance().screenWidth / 3,
                  fit: BoxFit.fill),
              Container(
                width: ScreenUtil.getInstance().screenWidth / 3,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(entity.productName,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ),
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(NumberUtil.getMoney(entity.salesPrice),
                        style: TextStyle(
                            color: Constant.ff333333,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    NumberUtil.greater(entity.marketPrice, entity.salesPrice)
                        ? Row(
                            children: [
                              SizedBox(
                                  width: ScreenUtil.getInstance()
                                      .getAdapterSize(4)),
                              Text(
                                NumberUtil.getMoney(entity.marketPrice),
                                style: TextStyle(
                                    color: Constant.ACACAC,
                                    decorationColor: Constant.ACACAC,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        : Container()
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: ScreenUtil.getInstance().getWidth(4))
        ],
      ),
    );
  }
}
