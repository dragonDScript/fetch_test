import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/appbar.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<StatefulWidget> {
  var entries = [];

  void newTemplate(context) {
    Dialog(
      child: Text("hola"),
    );
    showDialog(context: context);
  }

  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    return Scaffold(
        appBar: customAppBar,
        body: Row(
          children: [
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      color: Colors.grey[200],
                      child: TextButton.icon(
                          icon: Icon(Icons.add),
                          label: Text("Create new template"),
                          onPressed: () {
                            newTemplate(context);
                          }),
                    ),
                    ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: entries.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.web_asset),
                            label: Text('Entry ${entries[index]['name']}'),
                          );
                        })
                  ],
                ),
                flex: 3),
            Expanded(child: Text("2"), flex: isDesktop == true ? 5 : null)
          ],
        ));
  }
}
