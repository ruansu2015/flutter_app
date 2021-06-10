import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/base/BaseState.dart';
import 'package:flutterapp/bean/RightsBean.dart';
import 'package:flutterapp/entity/goods_description_entity.dart';
import 'package:flutterapp/entity/goods_info_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/state/BaseGetGoodsState.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/util/NumberUtil.dart';
import 'package:flutterapp/util/PromoUtil.dart';
import 'package:flutterapp/widget/RecommendGoodsWidget.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class GoodsDetailPage extends StatefulWidget {
  String storeId, productSysCode;

  GoodsDetailPage(this.storeId, this.productSysCode);

  @override
  State<StatefulWidget> createState() => _GoodsDetailPageState();
}

class _GoodsDetailPageState extends BaseGetGoodsState<GoodsDetailPage> {
  GoodsInfoEntity entity;
  List<RightsBean> rights;
  List<String> images;
  List<String> tabs = ['商品', '评论', '详情', '参数'];

  @override
  void initState() {
    _getProductInfo();
    _getImages();
    sendRequest('');
    super.initState();
  }

  Future<void> _getProductInfo() async {
    entity =
        await HttpManager.getProductInfo(widget.storeId, widget.productSysCode);
    _initRights();
    setState(() {});
  }

  Future<void> _getImages() async {
    images = [];
    GoodsDescriptionEntity entity = await HttpManager.getProductDescription(
        widget.storeId, widget.productSysCode);
    if (ObjectUtil.isNotEmpty(entity) && ObjectUtil.isNotEmpty(entity.images)) {
      if (ObjectUtil.isNotEmpty(entity.images.x2)) {
        for (int i = 0; i < entity.images.x2.length; i++) {
          images.add(entity.images.x2[i].imageUrl);
        }
      }
      if (ObjectUtil.isNotEmpty(entity.images.x4)) {
        for (int i = 0; i < entity.images.x4.length; i++) {
          images.add(entity.images.x4[i].imageUrl);
        }
      }
    }
    if (ObjectUtil.isNotEmpty(images)) setState(() {});
  }

  void _initRights() {
    if (ObjectUtil.isNotEmpty(entity)) {
      rights = [];
      rights.add(RightsBean('正品保障', true));
      rights.add(
          RightsBean(entity.isChange ? '不支持7天退换' : '7天退换', !entity.isChange));
      rights.add(RightsBean(entity.abandonPackages == 1 ? '不可用红包' : '可使用红包',
          entity.abandonPackages != 1));
      rights.add(RightsBean(entity.abandonCoupons == 1 ? '可使用打折券' : '不可用打折券',
          entity.abandonCoupons != 1));
      rights.add(RightsBean(entity.abandonIntegral != 1 ? '积分抵扣' : '不可用积分抵扣',
          entity.abandonIntegral != 1));
      rights.add(RightsBean(
          entity.isPostFree == 1 ? '包邮' : '不包邮', entity.isPostFree == 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ObjectUtil.isEmpty(entity)
          ? Container()
          : NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    toolbarHeight: 50,
                    leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: Icon(Icons.arrow_back_ios_rounded,
                            size: 20, color: Colors.black)),
                    actions: [
                      Icon(Icons.home_outlined, color: Colors.black),
                      Icon(Icons.share_outlined, color: Colors.black)
                    ],
                    backgroundColor: Colors.white,
                    expandedHeight: ScreenUtil.getInstance().screenWidth,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: DefaultTabController(
                            length: 4,
                            child: TabBar(
                                onTap: (int index) {},
                                tabs: tabs.map((e) => Tab(text: e)).toList(),
                                isScrollable: false,
                                labelColor: Colors.black,
                                indicatorColor: Colors.black,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                                unselectedLabelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14))),
                        background: Swiper(
                            itemWidth: double.infinity,
                            itemCount: entity.galleryList.length,
                            autoplayDisableOnInteraction: true,
                            pagination: SwiperPagination(
                                alignment: Alignment.bottomCenter,
                                builder: SwiperPagination.fraction),
                            itemBuilder: (BuildContext context, int index) {
                              return ExtendedImage.network(
                                  ImageUrlUtil.getUrl(
                                      entity.galleryList[index].imageUrl),
                                  fit: BoxFit.fitHeight);
                            })),
                  )
                ];
              },
              body: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        ObjectUtil.isNotEmpty(entity.productCardInfo) &&
                                entity.abandonPackages == 0
                            ? Row(children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Constant.FFF0F0,
                                      border: Border.all(
                                          width: 1, color: Constant.FF6A6A),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                      entity.productCardInfo.discountMax,
                                      style: TextStyle(color: Constant.FF6A6A)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                      '等${entity.productCardInfo.unGet}张券可领',
                                      style:
                                          TextStyle(color: Constant.ff999999)),
                                ),
                                Expanded(child: SizedBox()),
                                Text('领取',
                                    style: TextStyle(color: Colors.black)),
                                Icon(Icons.keyboard_arrow_right_rounded,
                                    color: Colors.black)
                              ])
                            : Container(),
                        Text('[${entity.brandName}]${entity.productName}',
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(fontSize: 17, color: Colors.black)),
                        ObjectUtil.isEmpty(entity.sellPoint)
                            ? Container()
                            : Text(entity.sellPoint,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12, color: Constant.FF9F9F9F)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                NumberUtil.getMoney(
                                    entity.salePrice.toString()),
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            NumberUtil.greater(entity.marketPrice.toString(),
                                    entity.salePrice.toString())
                                ? Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Text('吊牌价：',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Constant.ACACAC)),
                                        Text(
                                            NumberUtil.getMoney(
                                                entity.marketPrice.toString()),
                                            style: TextStyle(
                                                fontSize: 14,
                                                decorationColor:
                                                    Constant.ACACAC,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Constant.ACACAC))
                                      ],
                                    ),
                                  )
                                : Container(),
                            entity.status == 1
                                ? Container()
                                : Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                        entity.status == 0 ? '已售罄' : '库存紧张',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Constant.ACACAC))),
                            Expanded(child: SizedBox()),
                            Text('销量${entity.saleCountMonth}',
                                style: TextStyle(
                                    fontSize: 14, color: Constant.ACACAC))
                          ],
                        ),
                        ObjectUtil.isEmpty(entity.promoList)
                            ? Container()
                            : Row(
                                children: [
                                  Text('活动',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Constant.ff333333,
                                          fontWeight: FontWeight.bold)),
                                  Expanded(
                                      child: Container(
                                    height: 20,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: entity.promoList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6, vertical: 3),
                                            decoration: BoxDecoration(
                                                color: PromoUtil.getPromoColor(
                                                    int.tryParse(entity
                                                        .promoList[index]
                                                        .promoType)),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                                entity
                                                    .promoList[index].promoName,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12)),
                                          );
                                        }),
                                  )),
                                  Icon(Icons.more_horiz_sharp,
                                      color: Constant.ACACAC)
                                ],
                              ),
                        entity.integralDeductMoney == 0
                            ? Container()
                            : Row(children: [
                                Text('积分',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Constant.ff333333,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                      '最高可抵扣' +
                                          NumberUtil.getMoney(entity
                                              .integralDeductMoney
                                              .toString()),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Constant.ff333333)),
                                )
                              ]),
                        ObjectUtil.isEmpty(rights)
                            ? Container()
                            : Row(
                                children: [
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: _getRights(),
                                  )),
                                  Icon(Icons.more_horiz_sharp,
                                      color: Constant.ACACAC)
                                ],
                              )
                      ])),
                  Container(height: 5, color: Constant.F5F5F5),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Text('品牌: ' + entity.brandName,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Constant.ff333333)),
                        Expanded(child: SizedBox()),
                        Text('进入品牌',
                            style: TextStyle(
                                fontSize: 14, color: Constant.ff999999)),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Colors.black)
                      ])),
                  Container(height: 5, color: Constant.F5F5F5),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(children: [
                            Text('评论数量（${entity.commentCount}）',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.ff333333)),
                            Expanded(child: SizedBox()),
                            Text('查看更多',
                                style: TextStyle(
                                    fontSize: 14, color: Constant.ff999999)),
                            Icon(Icons.keyboard_arrow_right_rounded,
                                color: Colors.black)
                          ]),
                          ObjectUtil.isEmpty(entity.commentList)
                              ? Container()
                              : Container(
                                  height: 110,
                                  child: ListView.builder(
                                      itemCount: entity.commentList.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          width: entity.commentList.length > 1
                                              ? ScreenUtil.getInstance()
                                                      .screenWidth -
                                                  90
                                              : ScreenUtil.getInstance()
                                                      .screenWidth -
                                                  20,
                                          margin: EdgeInsets.fromLTRB(
                                              0, 10, 10, 10),
                                          decoration: BoxDecoration(
                                              color: Constant.F5F5F5,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: ObjectUtil.isEmpty(
                                                                entity
                                                                    .commentList[
                                                                        index]
                                                                    .avatarUrl)
                                                            ? AssetImage(
                                                                'images/avatar_default.png')
                                                            : NetworkImage(ImageUrlUtil
                                                                .getUrl(entity
                                                                    .commentList[
                                                                        index]
                                                                    .avatarUrl))),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                          ObjectUtil.isEmpty(entity
                                                                  .commentList[
                                                                      index]
                                                                  .userName)
                                                              ? ''
                                                              : entity
                                                                  .commentList[
                                                                      index]
                                                                  .userName,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                    )
                                                  ]),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                          ObjectUtil.isEmpty(entity
                                                                  .commentList[
                                                                      index]
                                                                  .comments)
                                                              ? ''
                                                              : entity
                                                                  .commentList[
                                                                      index]
                                                                  .comments,
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                              color: Constant
                                                                  .ff333333)))
                                                ]),
                                          ),
                                        );
                                      }),
                                ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('常见问题',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Constant.ff333333)),
                              Icon(Icons.keyboard_arrow_right_rounded,
                                  color: Colors.black)
                            ],
                          )
                        ],
                      )),
                  Container(height: 5, color: Constant.F5F5F5),
                  ObjectUtil.isEmpty(images)
                      ? Container()
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ExtendedImage.network(
                                  ImageUrlUtil.getUrl(images[index]),
                                  fit: BoxFit.fitWidth),
                            );
                          }),
                  Container(height: 5, color: Constant.F5F5F5),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('推荐商品',
                          style: TextStyle(
                              fontSize: 14, color: Constant.ff333333))),
                  RecommendGoodsWidget(null, goodsList)
                ],
              )),
    );
  }

  Widget _getRight(RightsBean bean) {
    return Row(
      children: [
        Image.asset(
            bean.isSupport
                ? 'images/details_certificate.png'
                : 'images/details_not_support.png',
            height: 12),
        Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(bean.title,
                style: TextStyle(fontSize: 13, color: Constant.FF919191)))
      ],
    );
  }

  List<Widget> _getRights() {
    List<Widget> widgets = [];
    for (int i = 0; i < (rights.length > 3 ? 3 : rights.length); i++) {
      widgets.add(_getRight(rights[i]));
    }
    return widgets;
  }
}
