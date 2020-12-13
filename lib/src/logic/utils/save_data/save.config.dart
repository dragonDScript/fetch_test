import 'dart:io' as io;
import 'package:path_provider/path_provider.dart' as p_provider;
import 'package:path/path.dart' as p;
import 'dart:convert' as convert;
import 'dart:async';

void save(String name, dynamic value) {
  // convert fields to json
  String json = convert.jsonEncode({name: name, value: value});
  Future<io.Directory> docPath = p_provider.getApplicationDocumentsDirectory();
  String path = p.join(docPath.toString(), '.xstoreconfig.json');

  io.File write = io.File(path.toString());
  write.writeAsString(json); // write json contents
}
