import 'dart:io' as io;
import 'package:path_provider/path_provider.dart' as p_provider;
import 'package:path/path.dart' as p;
import 'dart:convert' as convert;

Future<Map<String, dynamic>> load() async {
  io.Directory docPath = await p_provider.getApplicationDocumentsDirectory();
  String path = p.join(docPath.path, '.xstoreconfig.json');

  io.File read = io.File(path.toString());
  var readedFile = await read.readAsString();
  Map<String, dynamic> object = convert.jsonDecode(readedFile);
  return object;
}
