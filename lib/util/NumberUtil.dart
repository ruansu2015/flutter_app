import 'package:flustars/flustars.dart';

class NumberUtil {
  static String getMoney(String number) {
    return MoneyUtil.changeYWithUnit(number, MoneyUnit.YUAN,
        format: MoneyFormat.END_INTEGER);
  }

  static bool greater(String a, String b) {
    return NumUtil.greaterThanDecStr(a, b);
  }
}
