import 'dart:convert';
import 'package:fetch_test/src/logic/utils/save_data/load.config.dart' as load;
import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;

/// @deprecated
/// newTemplate will be deprecated in future versions.
/// Please use set.config.dart
void newTemplate(obj) async {
  var config = await load.load();

  config['templates'].add(obj);

  // write res as JSON
  save.save(jsonEncode(config));
}
