import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar,
        body: Row(
          children: [
            Expanded(
                child: ListView(
                  children: [
                    Container(
                        color: Colors.grey[200],
                        child: TextButton(
                          child: Text("Create new Template"),
                          onPressed: () {},
                        ))
                  ],
                ),
                flex: 3),
            Expanded(child: Text("2"), flex: 5)
          ],
        ));
  }
}
