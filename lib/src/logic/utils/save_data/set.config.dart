import 'package:fetch_test/src/logic/utils/save_data/load.config.dart' as load;
import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;
import 'dart:convert';

void setConfig(String field, content) async {
  var config = await load.load();

  config[field] = content;

  var configToString = jsonEncode(config);
  save.save(configToString);
}
