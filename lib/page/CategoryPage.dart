import 'package:extended_image/extended_image.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/base/BaseState.dart';
import 'package:flutterapp/entity/category_result_entity.dart';
import 'package:flutterapp/entity/first_level_category_entity.dart';
import 'package:flutterapp/http/HttpManager.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends BaseState<CategoryPage> {
  String _url;
  int _index = 0;
  List<FirstLevelCategoryEntity> _firstLevelCategoryEntities;
  CategoryResultEntity _categoryResultEntity;

  @override
  void initState() {
    super.initState();
    _getFirstLevel();
  }

  Future<void> _getFirstLevel() async {
    _firstLevelCategoryEntities = await HttpManager.getFirstLevCates();
    if (!ObjectUtil.isEmptyList(_firstLevelCategoryEntities)) {
      _url = _firstLevelCategoryEntities[_index].imgAdMark;
      _getChildLevel();
    }
  }

  Future<void> _getChildLevel() async {
    _categoryResultEntity = await HttpManager.getCateRelChild(
        _firstLevelCategoryEntities[_index].id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        Flexible(
            child: ObjectUtil.isEmptyList(_firstLevelCategoryEntities)
                ? Container()
                : ListView.builder(
                    itemCount: _firstLevelCategoryEntities.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _getFirstLevelItem(index);
                    })),
        Flexible(
            flex: 3,
            child: ObjectUtil.isEmpty(_categoryResultEntity)
                ? Container()
                : ListView(
                    children: _getWidgets(),
                  ))
      ],
    ));
  }

  List<Widget> _getWidgets() {
    List<Widget> widgets = [];
    if (ObjectUtil.isNotEmpty(_url))
      widgets.add(Image.network(ImageUrlUtil.getUrl(_url)));
    widgets.addAll(
        _categoryResultEntity.children.map((e) => _getChildItem(e)).toList());
    return widgets;
  }

  Widget _getFirstLevelItem(int index) {
    return GestureDetector(
      onTap: () {
        _index = index;
        _getChildLevel();
      },
      child: Container(
        color: index == _index ? Colors.white : Constant.F5F5F5,
        child: Row(
          children: [
            Container(
                height: ScreenUtil.getInstance().getHeight(30),
                color: index == _index ? Constant.F84646 : Constant.F5F5F5,
                width: ScreenUtil.getInstance().getWidth(4)),
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 15, 0, 15),
              child: Text(
                _firstLevelCategoryEntities[index].siteCateName,
                style: TextStyle(
                    color:
                        index == _index ? Constant.FF6A6A : Constant.ff333333,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getChildItem(CategoryResultChildren children) {
    return Column(
      children: [
        Row(
          children: [
            Container(width: 2, height: 30, color: Constant.F84646),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(children.mallExtendCategory.siteCateName,
                  style: TextStyle(color: Constant.ff333333, fontSize: 16)),
            )
          ],
        ),
        ObjectUtil.isEmptyList(children.children)
            ? Container()
            : StaggeredGridView.countBuilder(
                shrinkWrap: true,
                crossAxisCount: 3,
                itemCount: children.children.length,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: ScreenUtil.getInstance().getWidth(8),
                crossAxisSpacing: ScreenUtil.getInstance().getWidth(10),
                itemBuilder: (BuildContext context, int index) =>
                    _getImageItem(children.children[index].mallExtendCategory),
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.fit(1);
                })
      ],
    );
  }

  Widget _getImageItem(
      CategoryResultChildrenChildrenMallExtendCategory category) {
    return ObjectUtil.isEmpty(category)
        ? Container()
        : Column(
            children: [
              AspectRatio(
                  aspectRatio: 1,
                  child: ExtendedImage.network(
                      ImageUrlUtil.getUrl(category.icon))),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    category.siteCateName,
                    maxLines: 1,
                    style: TextStyle(
                        color: Constant.FF919191,
                        fontSize: 12),
                  ),
                ),
              )
            ],
          );
  }
}
