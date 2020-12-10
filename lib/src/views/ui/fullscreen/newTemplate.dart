import 'package:flutter/material.dart';

Widget newTemplate = Material(
  child: AppBar(
    title: Text('Create template'),
    actions: [
      IconButton(
        icon: Icon(Icons.check),
        onPressed: () {},
        tooltip: "Save",
      )
    ],
  ),
);
