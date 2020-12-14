import 'dart:io';
import 'dart:async';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p_provider;

Future<Stream<FileSystemEvent>> watchConfigFile() async {
  //get the config file
  Directory docPath = await p_provider.getApplicationDocumentsDirectory();
  String path = p.join(docPath.path, '.xstoreconfig.json');
  //watch it
}
