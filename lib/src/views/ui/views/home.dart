import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/sections/appbar.dart' as customAppBar;
import 'package:fetch_test/src/views/ui/fullscreen/newTemplate.dart'
    as template;
import 'package:fetch_test/src/logic/utils/fs/watch_config_file.dart'
    as watcher;
import 'package:fetch_test/src/logic/utils/save_data/get.config.dart'
    as getConfig;
import 'package:fetch_test/src/logic/utils/save_data/set.config.dart'
    as setConfig;
import 'package:fetch_test/src/logic/utils/save_data/delete.config.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<StatefulWidget> {
  Future<dynamic> entries = getConfig.getConfig('templates');
  int selectedButton = 0;

  void newTemplate(context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) => template.NewTemplate(),
        fullscreenDialog: true));
  }

  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;
    return Scaffold(
        appBar: customAppBar.customAppBar(context),
        body: FutureBuilder(
            future: entries,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
                Row(children: [
                  Flexible(
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
                              itemCount: snapshot.data.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                String icon = snapshot.data[index]['icon'];
                                return TextButton.icon(
                                  onPressed: () {
                                    //select this card when you click on it
                                    this.selectedButton = index;
                                  },
                                  icon: Icon(Icons.web),
                                  label:
                                      Text('${snapshot.data[index]['title']}'),
                                  onLongPress: () async {
                                    deleteConfig('templates', index);
                                  },
                                );
                              })
                        ],
                      ),
                      flex: 3),
                  Flexible(
                      child: Column(children: [
                        snapshot.data.length > 0
                            ? TextFormField(
                                initialValue: snapshot.data[selectedButton]
                                    ['title'])
                            : Center(
                                child: Column(children: [
                                Icon(Icons.all_inbox),
                                Text("Nothing to preview")
                              ]))
                      ]),
                      flex: isDesktop == true ? 5 : null)
                ])));
  }
}
