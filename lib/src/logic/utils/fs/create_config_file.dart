import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;
import 'dart:io' as io;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p_provider;

void createConfigFile() async {
  //Create configuration file if it is missing
  io.Directory docPath = await p_provider.getApplicationDocumentsDirectory();
  String path = p.join(docPath.path, '.xstoreconfig.json');

  if (!io.File(path).existsSync()) {
    save.save('{"templates": []}');
  }
}
