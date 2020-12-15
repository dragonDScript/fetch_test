import 'package:flutter/material.dart';
import 'package:fetch_test/src/logic/internal/template/new.template.dart'
    as newTemplate;

class NewTemplate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewTemplate();
}

class _NewTemplate extends State<StatefulWidget> {
  String title;
  String description;
  String icon;
  String url;
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
              onPressed: () {
                newTemplate.newTemplate({
                  'title': this.title,
                  'description': this.description,
                  'icon': this.icon,
                  'url': this.url,
                  'headers': this.headers,
                  'isFavourite': this.isFavourite
                });
                Navigator.pop(context);
              },
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
            TextField(
              onChanged: (content) {
                this.icon = content;
              },
            ),
            Checkbox(
              value: this.isFavourite,
              onChanged: (content) {
                setState(() {
                  this.isFavourite = content;
                });
              },
              tristate: true,
            )
          ],
        )
      ]),
    );
  }
}
