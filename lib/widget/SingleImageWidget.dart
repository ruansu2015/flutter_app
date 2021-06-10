import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/mall_entity.dart';
import 'package:flutterapp/util/ImageUrlUtil.dart';

// ignore: must_be_immutable
class SingleImageWidget extends StatelessWidget {
  bool isVideo;
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  SingleImageWidget(this.isVideo, this.footDistance, this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    if (mallPlateContentList == null || mallPlateContentList.isEmpty)
      return Container();
    return Container(
      margin: EdgeInsets.only(bottom: double.tryParse(footDistance.toString())),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: ExtendedImage.network(
              ImageUrlUtil.getUrl(mallPlateContentList[0].imageUrl),
              fit: BoxFit.fitWidth,
            ),
          ),
          isVideo
              ? Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 70,
                )
              : Container(),
        ],
      ),
    );
  }
}
