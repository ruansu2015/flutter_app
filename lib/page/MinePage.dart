import 'dart:convert';

import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/UserCenter.dart';
import 'package:flutterapp/base/BaseState.dart';
import 'package:flutterapp/bean/CardBean.dart';
import 'package:flutterapp/entity/config_entity.dart';
import 'package:flutterapp/entity/config_value_entity.dart';
import 'package:flutterapp/entity/user_info_entity.dart';
import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/page/TestPage.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:get/get.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends BaseState<MinePage> {
  String _activityUrl;
  UserInfoEntity userInfoEntity;

  List<CardBean> orderBeans = [
    CardBean('images/icon_order_pay.png', '待付款'),
    CardBean('images/icon_order_express.png', '待发货'),
    CardBean('images/icon_order_reciver.png', '待收货'),
    CardBean('images/icon_order_comment.png', '待评价'),
    CardBean('images/icon_order_drawback.png', '退款/售后')
  ];

  List<CardBean> couponBeans = [
    CardBean('images/icon_red_packet.png', '红包'),
    CardBean('images/icon_user_free_cards.png', '包邮券'),
    CardBean('images/icon_user_coupons.png', '打折券'),
    CardBean('images/icon_money.png', '邦购币')
  ];

  List<CardBean> toolBeans = [
    CardBean('images/icon_vip_card.png', '会员卡'),
    CardBean('images/icon_sign.png', '签到有礼'),
    CardBean('images/icon_service.png', '在线客服'),
    CardBean('images/icon_feedback.png', '意见反馈')
  ];

  @override
  void initState() {
    getUserInfo();
    _checkActivity();
    super.initState();
  }

  Future<void> _checkActivity() async {
    ConfigEntity configEntity =
        await HttpManager.getConfigByKey(Constant.KEY_ACTIVITY_AD);
    if (ObjectUtil.isNotEmpty(configEntity) &&
        ObjectUtil.isNotEmpty(configEntity.configValue)) {
      ConfigValueEntity entity = JsonConvert.fromJsonAsT<ConfigValueEntity>(
          json.decode(configEntity.configValue));
      if (ObjectUtil.isNotEmpty(entity.image)) {
        _activityUrl = entity.image;
        setState(() {});
      }
    }
  }

  Future<void> getUserInfo() async {
    if (UserCenter.isLogin()) {
      userInfoEntity = await HttpManager.getUserInfo();
      SpUtil.putObject(Constant.KEY_USER_INFO, userInfoEntity);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/icon_header_bg.png',
            width: double.infinity, fit: BoxFit.fill),
        SafeArea(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('我的',
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 24,
                        backgroundImage: ObjectUtil.isEmpty(userInfoEntity) ||
                                ObjectUtil.isEmpty(userInfoEntity.avatarUrl)
                            ? AssetImage('images/avatar_default.png')
                            : NetworkImage(
                                ImageUrlUtil.getUrl(userInfoEntity.avatarUrl))
                        // ExtendedImage(
                        //         image: ExtendedNetworkImageProvider(
                        //             ImageUrlUtil.getUrl(
                        //                 userInfoEntity.avatarUrl)),
                        //       )
                        ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ObjectUtil.isEmpty(userInfoEntity)
                            ? Text('登录/注册',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ObjectUtil.isEmpty(userInfoEntity.nickname)
                                        ? '请输入昵称'
                                        : userInfoEntity.nickname,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        _getLevelAssert(userInfoEntity.levelid),
                                        height: 18,
                                      ),
                                      SizedBox(width: 6),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 3,
                                              width: 120,
                                              child: LinearProgressIndicator(
                                                value: (userInfoEntity
                                                            .growvalue /
                                                        userInfoEntity
                                                            .nextLevelPoints)
                                                    .toDouble(),
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.white),
                                                backgroundColor: Colors.black26,
                                              ),
                                            ),
                                            Text(
                                                userInfoEntity.levelid < 51 &&
                                                        userInfoEntity
                                                                .growvalue >=
                                                            0
                                                    ? '成长值：${userInfoEntity.growvalue}/${userInfoEntity.nextLevelPoints}'
                                                    : '成长值：0/${userInfoEntity.nextLevelPoints}',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white))
                                          ])
                                    ],
                                  )
                                ],
                              )),
                    Expanded(child: SizedBox()),
                    Image.asset(
                      'images/icon_setting.png',
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _getRecord(
                        ObjectUtil.isEmpty(userInfoEntity)
                            ? 0
                            : userInfoEntity.collectionGoodsCount,
                        '我的收藏'),
                    _getRecord(
                        ObjectUtil.isEmpty(userInfoEntity)
                            ? 0
                            : userInfoEntity.points.toInt(),
                        '我的积分'),
                    _getRecord(
                        ObjectUtil.isEmpty(userInfoEntity)
                            ? 0
                            : userInfoEntity.browsinHistory,
                        '浏览记录')
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(shrinkWrap: true, children: [
                    ObjectUtil.isEmpty(_activityUrl)
                        ? Container()
                        : Container(
                            margin: EdgeInsets.only(top: 16),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => TestPage('abcdefg'));
                              },
                              child: ExtendedImage.network(_activityUrl,
                                  fit: BoxFit.fill),
                            )),
                    _getCard('我的订单', '我的订单', orderBeans),
                    _getCard('我的券包', '', couponBeans),
                    _getCard('工具与服务', '', toolBeans)
                  ]),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  String _getLevelAssert(int level) {
    switch (level) {
      case 11:
        return 'images/icon_level_2.png';
      case 21:
        return 'images/icon_level_3.png';
      case 31:
        return 'images/icon_level_4.png';
      case 41:
        return 'images/icon_level_6.png';
      case 51:
        return 'images/icon_level_5.png';
      default:
        return 'images/icon_level_normal.png';
    }
  }

  Widget _getRecord(int number, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$number',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(name, style: TextStyle(fontSize: 12, color: Colors.white))
      ],
    );
  }

  Widget _getCard(String name, String title, List<CardBean> beans) {
    return Card(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                Expanded(child: SizedBox()),
                ObjectUtil.isEmpty(title)
                    ? Container()
                    : Row(
                        children: [
                          Text(title,
                              style: TextStyle(
                                  color: Constant.ff999999, fontSize: 12)),
                          Icon(Icons.arrow_forward_ios,
                              size: 10, color: Constant.ff999999)
                        ],
                      )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: beans.map((e) => _getItem(e)).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _getItem(CardBean bean) {
    return Column(children: [
      Image.asset(bean.icon),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(bean.name,
            style: TextStyle(color: Constant.ff333333, fontSize: 12)),
      )
    ]);
  }
}
