import 'package:flustars/flustars.dart';

class ImageUrlUtil {
  static String getUrl(String link) {
    if (ObjectUtil.isEmpty(link))
      return '';
    else if (RegexUtil.isURL(link))
      return link;
    else
      return 'https://pic.banggo.com' + link;
  }
}
