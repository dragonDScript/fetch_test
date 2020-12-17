import 'package:flutter/material.dart';
import 'package:fetch_test/src/app.dart';
import 'package:fetch_test/src/logic/utils/fs/create_config_file.dart' as ccf;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ccf.createConfigFile();
  runApp(MyApp());
}
