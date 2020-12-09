import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/fullscreen/settings.dart'
    as settingsTemplate;

AppBar customAppBar = AppBar(
  title: Text("XStore Fetch Test"),
  actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
);
