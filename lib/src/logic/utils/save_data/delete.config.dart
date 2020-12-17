import 'package:fetch_test/src/logic/utils/save_data/get.config.dart'
    as getConfig;
import 'package:fetch_test/src/logic/utils/save_data/set.config.dart'
    as setConfig;

void deleteConfig(String field, int index) {
  //delete this entry in the .xstoreconfig.json file
  var config = getConfig.getConfig(field);
  config[index] = null;
  setConfig.setConfig(field, config);
}
