import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/appbar.dart';

class Home extends StatelessWidget {
  void _new_template() {}

  @override
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
                          onPressed: _new_template,
                        ))
                  ],
                ),
                flex: 3),
            Expanded(child: Text("2"), flex: isDesktop == true ? 5 : null)
          ],
        ));
  }
}
