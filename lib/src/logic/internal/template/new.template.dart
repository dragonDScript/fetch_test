import 'package:fetch_test/src/logic/utils/save_data/load.config.dart' as load;
import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;

void newTemplate(Map<String, dynamic> obj) {
  Future<List<Map<String, dynamic>>> config = load.load();

  config.then((List<Map<String, dynamic>> res) {
    res.add(obj);
    save.save(res.toString());
  });
}
