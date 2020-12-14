import 'dart:convert';
import 'package:fetch_test/src/logic/utils/save_data/load.config.dart' as load;
import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;

void newTemplate(obj) async {
  var config = await load.load();

  config.add(obj);

  // write res as JSON
  save.save(jsonEncode(config));
}
