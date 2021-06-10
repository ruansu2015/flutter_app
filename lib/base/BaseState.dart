import 'package:flutter/cupertino.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
}
