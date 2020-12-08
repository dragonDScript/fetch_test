import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar,
        body: Row(
          children: [
            Expanded(child: Text("1"), flex: 3),
            Expanded(child: Text("2"), flex: 5)
          ],
        ));
  }
}
