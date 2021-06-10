import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/base/BaseState.dart';
import 'package:flutterapp/entity/base_entity.dart';
import 'package:flutterapp/entity/config_entity.dart';
import 'package:flutterapp/entity/config_value_entity.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/generated/json/base/json_convert_content.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/http/HttpParams.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';
import 'package:flutterapp/util/MallTypeUtil.dart';
import 'package:flutterapp/util/MallWidgetUtil.dart';
import 'package:flutterapp/widget/SearchWidget.dart';

class MallPage extends StatefulWidget {
  @override
  _MallPageState createState() => _MallPageState();
}

class _MallPageState extends BaseState<MallPage> {
  String _searchWords = 'ncai';

  List<ConfigValueEntity> configs = [];

  Widget _widget = Container();

  @override
  bool get wantKeepAlive => true;

  @override
  Future<void> initState() {
    super.initState();
    _setTab();
    _setData();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
            image: AssetImage('images/mall_bg.png'),
            fit: BoxFit.fitWidth,
            width: double.infinity),
        SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: SearchWidget(_searchWords)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.widgets,
                            color: Colors.white,
                          ),
                          Text(
                            '分类',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 12),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: configs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int position) {
                        return Center(
                          child: Container(
                            padding: EdgeInsets.only(
                                right: position == configs.length - 1 ? 0 : 16),
                            child: _getChild(position),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 16),
                _widget
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _getChild(int position) {
    String image = configs[position].image;
    if (image != null && image.isNotEmpty)
      return Image.network(ImageUrlUtil.getUrl(image));
    else
      return Text(configs[position].name,
          style: TextStyle(color: Colors.white));
  }

  _setTab() async {
    ConfigEntity configEntity =
        await HttpManager.getConfigByKey(Constant.KEY_STORE_TAB);
    if (configEntity != null) {
      String configValue = configEntity.configValue;
      if (configValue != null && configValue.isNotEmpty) {
        configs = JsonConvert.fromJsonAsT<List<ConfigValueEntity>>(
            json.decode(configValue));
        if (configs != null && configs.isNotEmpty) setState(() {});
      }
    }
  }

  _setData() async {
    MallEntity mallEntity =
        await HttpManager.getResultBySiteMark<MallEntity>(HttpParams.APP_INDEX);
    if (mallEntity != null) {
      List<MallMallPlateContentBeanList> mallPlateContentBeanList =
          mallEntity.mallPlateContentBeanList;
      if (mallPlateContentBeanList != null &&
          mallPlateContentBeanList.isNotEmpty)
        setState(() {
          _widget = Flexible(
            child: ListView(
              shrinkWrap: true,
              children: mallPlateContentBeanList
                  .map((MallMallPlateContentBeanList mallPlateContentBeanList) {
                return MallWidgetUtil.getWidget(
                    mallPlateContentBeanList.mallPlate.plateTitle,
                    MallTypeUtil.getViewType(
                        mallPlateContentBeanList.mallPlate.plateType,
                        mallPlateContentBeanList.mallPlate.plateName),
                    mallPlateContentBeanList.mallPlateTemplate.footDistance,
                    mallPlateContentBeanList.mallPlateContentList);
              }).toList(),
            ),
          );
        });
    }
  }
}
