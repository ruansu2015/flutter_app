import 'package:flutterapp/generated/json/base/json_convert_content.dart';

class ConfigEntity with JsonConvert<ConfigEntity> {
	int page;
	int rows;
	int start;
	String configValue;
}
