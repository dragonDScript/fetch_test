import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/fullscreen/settings.dart'
    as settingsTemplate;

var customAppBar = (BuildContext context) => AppBar(
      title: Text("Settings"),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          tooltip: "XStore Fetch Test",
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Material(
                      child: settingsTemplate.settings,
                    )));
          },
        )
      ],
    );
