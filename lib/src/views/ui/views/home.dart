import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/sections/appbar.dart' as customAppBar;
import 'package:fetch_test/src/views/ui/fullscreen/newTemplate.dart'
    as template;
import 'package:fetch_test/src/logic/utils/fs/watch_config_file.dart'
    as watcher;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<StatefulWidget> {
  List<Map<String, String>> entries = [];
  int selectedButton;
  void newTemplate(context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) => template.NewTemplate(),
        fullscreenDialog: true));
  }

  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    return Scaffold(
        appBar: customAppBar.customAppBar(context),
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
                          String icon = entries[index]['icon'];
                          return TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.web),
                            label: Text('${entries[index]['name']}'),
                          );
                        })
                  ],
                ),
                flex: 3),
            Expanded(
                child: Column(
                  children: [
                    TextFormField(
                        initialValue: entries[selectedButton]['title'])
                  ],
                ),
                flex: isDesktop == true ? 5 : null)
          ],
        ));
  }
}
