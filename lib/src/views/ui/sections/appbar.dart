import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/fullscreen/settings.dart'
    as settingsTemplate;

var customAppBar = (BuildContext context) => AppBar(
      title: Text("XStore Fetch"),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          tooltip: "Settings",
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Material(
                      child: settingsTemplate.settings,
                    )));
          },
        )
      ],
    );
