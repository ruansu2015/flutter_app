import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestStaggeredGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        crossAxisCount: 2,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Image.network(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg01.e23.cn%2F2018%2F0203%2F20180203121335686.jpg&refer=http%3A%2F%2Fimg01.e23.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1624609907&t=a0001e49233bd12e1cf4dc06c1602382'),
              index % 2 == 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(index.toString()),
                    )
                  : Container()
            ],
          );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.fit(1);
        });
  }
}
