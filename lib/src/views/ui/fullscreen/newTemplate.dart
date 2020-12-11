import 'package:flutter/material.dart';

class NewTemplate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewTemplate();
}

class _NewTemplate extends State<StatefulWidget> {
  String title;
  String url;
  String description;
  Map<String, dynamic> headers = {};
  bool isFavourite = false;

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
          children: [
            TextField(
              onChanged: (content) {
                this.title = content;
              },
            ),
            TextField(
              onChanged: (content) {
                this.url = content;
              },
            ),
            TextField(
              onChanged: (content) {
                this.description = content;
              },
            ),
            Checkbox(
              value: this.isFavourite,
              onChanged: (content) {
                this.isFavourite = content;
              },
              tristate: true,
            )
          ],
        )
      ]),
    );
  }
}
