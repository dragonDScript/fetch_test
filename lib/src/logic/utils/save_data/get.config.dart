import 'package:fetch_test/src/logic/utils/save_data/load.config.dart' as load;

getConfig(String field) async {
  var config = await load.load();

  return config[field];
}
