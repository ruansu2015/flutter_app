import 'package:flutter/widgets.dart';
import 'package:flutterapp/interface/ICommon.dart';

abstract class BaseStatelessWidget extends StatelessWidget implements ICommon {
  @override
  bool isEmpty(String s) {
    return s == null || s.isEmpty;
  }

  @override
  bool isListEmpty(List list) {
    return list == null || list.isEmpty;
  }
}

abstract class BaseStatefulWidget extends StatefulWidget implements ICommon {
  @override
  bool isEmpty(String s) {
    return s == null || s.isEmpty;
  }

  @override
  bool isListEmpty(List list) {
    return list == null || list.isEmpty;
  }
}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T>
    implements ICommon {
  @override
  bool isEmpty(String s) {
    return s == null || s.isEmpty;
  }

  @override
  bool isListEmpty(List list) {
    return list == null || list.isEmpty;
  }
}
