import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/Constant.dart';
import 'package:flutterapp/entity/mall_entity.dart';

// ignore: must_be_immutable
class PageBannerWidget extends StatelessWidget {
  int footDistance;
  List<MallMallPlateContentBeanListMallPlateContentList> mallPlateContentList;

  PageBannerWidget(this.footDistance, this.mallPlateContentList);

  @override
  Widget build(BuildContext context) {
    if (mallPlateContentList == null || mallPlateContentList.isEmpty)
      return Container();
    return Container(
      height: 155,
      margin: EdgeInsets.only(bottom: double.tryParse(footDistance.toString())),
      child: Swiper(
        autoplay: true,
        duration: 3000,
        itemWidth: double.infinity,
        itemCount: mallPlateContentList.length,
        autoplayDisableOnInteraction: true,
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter, builder: SwiperPagination.dots),
        // pagination: SwiperCustomPagination(
        //     builder: (BuildContext context, SwiperPluginConfig config) {
        //   return Row(
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: _getPagination(config));
        // }),
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: ExtendedImage.network(mallPlateContentList[index].imageUrl,
                fit: BoxFit.fill),
          );
        },
      ),
    );
  }

  List<Widget> _getPagination(SwiperPluginConfig config) {
    List<Widget> widgets = [];
    for (int i = 0; i < config.itemCount; i++) {
      bool choosed = i != config.activeIndex;
      widgets.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 3.5),
        width: choosed ? 16 : 36,
        height: 4,
        decoration: BoxDecoration(
            color: choosed ? Constant.X66000000 : Colors.white,
            borderRadius: BorderRadius.circular(4.5)),
      ));
    }
    return widgets;
  }
}
