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
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<StatefulWidget> {
  Future<Stream<dynamic>> entries = watcher.watchConfigFile();
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
            builder: (BuildContext context, AsyncSnapshot<dynamic> _snapshot) =>
                StreamBuilder(
                    stream: _snapshot.data,
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      } else {
                        print(jsonEncode(snapshot.data));
                        print(snapshot.hasData);
                        var list = jsonDecode(snapshot.data)['templates'];
                        return Row(children: [
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
                                      itemCount: list.length,
                                      shrinkWrap: true,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        String icon = list[index]['icon'];
                                        return TextButton.icon(
                                          onPressed: () {
                                            //select this card when you click on it
                                            this.selectedButton = index;
                                          },
                                          icon: Icon(Icons.web),
                                          label:
                                              Text('${list[index]['title']}'),
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
                                list.length > 0
                                    ? TextFormField(
                                        initialValue: list[selectedButton]
                                            ['title'])
                                    : Center(
                                        child: Column(children: [
                                        Icon(Icons.all_inbox),
                                        Text("Nothing to preview")
                                      ]))
                              ]),
                              flex: isDesktop == true ? 5 : null)
                        ]);
                      }
                    })));
  }
}
