import 'package:flutterapp/entity/config_entity.dart';

configEntityFromJson(ConfigEntity data, Map<String, dynamic> json) {
	if (json['page'] != null) {
		data.page = json['page'] is String
				? int.tryParse(json['page'])
				: json['page'].toInt();
	}
	if (json['rows'] != null) {
		data.rows = json['rows'] is String
				? int.tryParse(json['rows'])
				: json['rows'].toInt();
	}
	if (json['start'] != null) {
		data.start = json['start'] is String
				? int.tryParse(json['start'])
				: json['start'].toInt();
	}
	if (json['configValue'] != null) {
		data.configValue = json['configValue'].toString();
	}
	return data;
}

Map<String, dynamic> configEntityToJson(ConfigEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['page'] = entity.page;
	data['rows'] = entity.rows;
	data['start'] = entity.start;
	data['configValue'] = entity.configValue;
	return data;
}