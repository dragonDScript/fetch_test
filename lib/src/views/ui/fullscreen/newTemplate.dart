import 'package:flutter/material.dart';

class NewTemplate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewTemplate();
}

class _NewTemplate extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        AppBar(
          title: Text('Create template'),
          actions: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {},
              tooltip: "Save",
            )
          ],
        ),
        Column(
          children: [TextField()],
        )
      ]),
    );
  }
}
