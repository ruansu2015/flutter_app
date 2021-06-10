import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/mall_entity.dart';

class GridWidget extends StatelessWidget {
  int grid;
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  GridWidget(this.grid, this.footDistance, this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    if (mallPlateContentList == null || mallPlateContentList.isEmpty)
      return Container();
    return Container(
      margin: EdgeInsets.only(bottom: double.tryParse(footDistance.toString())),
      child: GridView.builder(
          itemCount: grid,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: grid,
              crossAxisSpacing: grid == 4 ? 50 : 10,
              childAspectRatio: grid == 4 ? 0.6 : 0.75),
          itemBuilder: (BuildContext context, int index) {
            if (grid == 3)
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: ExtendedImage.network(
                    mallPlateContentList[index].imageUrl,
                    fit: BoxFit.fitWidth,
                  ));
            return ExtendedImage.network(
              mallPlateContentList[index].imageUrl,
              fit: BoxFit.fitWidth,
            );
          }),
    );
  }
}
