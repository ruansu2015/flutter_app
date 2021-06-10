import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/mall_entity.dart';

// ignore: must_be_immutable
class SevenBrandWidget extends StatelessWidget {
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  SevenBrandWidget(this.footDistance, this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: double.tryParse(footDistance.toString())),
      child: Row(
        children: [
          Flexible(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  child: AspectRatio(
                    aspectRatio: 1 / 2,
                    child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(mallPlateContentList[0].imageUrl)),
                  ))),
          SizedBox(width: 6),
          _getColumn(0),
          SizedBox(width: 6),
          _getColumn(1),
          SizedBox(width: 6),
          _getColumn(2)
        ],
      ),
    );
  }

  Widget _getColumn(int index) {
    return Flexible(
        child: Column(
      children: [
        _getImage((index + 1) * 2 - 1),
        SizedBox(height: 6),
        _getImage((index + 1) * 2)
      ],
    ));
  }

  Widget _getImage(int index) {
    return AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: ExtendedImage.network(
              mallPlateContentList[index].imageUrl,
              fit: BoxFit.fill,
            )));
  }
}
