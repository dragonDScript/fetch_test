import 'dart:io' as io;
import 'package:path_provider/path_provider.dart' as p_provider;
import 'package:path/path.dart' as p;

void save(String content) async {
  io.Directory docPath = await p_provider.getApplicationDocumentsDirectory();
  String path = p.join(docPath.path, '.xstoreconfig.json');

  io.File write = io.File(path);
  write.writeAsString(content); // write json contents
}
