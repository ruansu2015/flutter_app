import 'dart:math';

import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterapp/entity/base_goods_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/util/ForwardUtil.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/util/NumberUtil.dart';
import 'package:flutterapp/util/PromoUtil.dart';

import '../Constant.dart';

// ignore: must_be_immutable
class RecommendGoodsWidget extends StatelessWidget {
  Widget widget;
  List<BaseGoodsEntity> goodsList;

  RecommendGoodsWidget(this.widget, this.goodsList);

  @override
  Widget build(BuildContext context) {
    return ObjectUtil.isEmptyList(goodsList)
        ? Container()
        : StaggeredGridView.countBuilder(
            shrinkWrap: true,
            crossAxisCount: 2,
            itemCount: goodsList.length,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemBuilder: (BuildContext context, int index) =>
                _getItem(goodsList[index]),
            staggeredTileBuilder: (int index) {
              return StaggeredTile.fit(1);
            });
  }

  Widget _getItem(BaseGoodsEntity entity) {
    return GestureDetector(
      onTap: () {
        ForwardUtil.forwardGoodsDetail(entity.storeId, entity.productCode);
      },
      child: Card(
        elevation: 1,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: ExtendedImage.network(
                    ImageUrlUtil.getUrl(entity.imgUrl),
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      entity.brandName + '|' + entity.productName,
                      maxLines: 2,
                    ),
                    ObjectUtil.isEmptyList(entity.promoInfoList)
                        ? Container()
                        : SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: entity.promoInfoList
                                  .map((e) => Card(
                                        color: PromoUtil.getPromoColor(
                                            int.tryParse(e.promotionType)),
                                        child: Text(e.promotionName,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                      ))
                                  .toList(),
                            ),
                          ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(NumberUtil.getMoney(entity.salesPrice),
                              style: TextStyle(
                                  color: Constant.ff333333,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          NumberUtil.greater(
                                  entity.marketPrice, entity.salesPrice)
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
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              : Container()
                        ]),
                    ObjectUtil.isEmpty(widget) ? Container() : widget
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
