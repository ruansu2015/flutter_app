import 'package:flutterapp/entity/config_value_entity.dart';

configValueEntityFromJson(ConfigValueEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	return data;
}

Map<String, dynamic> configValueEntityToJson(ConfigValueEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['url'] = entity.url;
	return data;
}