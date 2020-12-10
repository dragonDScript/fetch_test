import 'dart:io' as io;
import 'package:path_provider/path_provider.dart' as p;
import 'package:path/path.dart' as p;
import 'dart:convert' as convert;
import 'dart:async';

Future<String> load() {
  Future<io.Directory> docPath = p.getApplicationDocumentsDirectory();
  String path;
  docPath.then((res) {
    path = p.join(res.toString(), '.xstoreconfig.json');
  });

  io.File read = io.File(path.toString());
  return read.readAsString();
}
