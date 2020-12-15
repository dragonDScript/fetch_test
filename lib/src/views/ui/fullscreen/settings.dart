import 'package:flutter/material.dart';
import 'package:fetch_test/src/logic/utils/save_data/save.config.dart' as save;

Material settings = Material(
  child: Column(children: [
    AppBar(
      title: Text('Settings'),
      actions: [
        TextButton(
          child: Text("APPLY"),
          onPressed: () {},
        )
      ],
    ),
    Column(
      children: [
        TextButton(
            onPressed: () {
              save.save('{}');
            },
            child: Text("Reset settings"))
      ],
    )
  ]),
);
