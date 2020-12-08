import 'package:flutter/material.dart';
import 'package:fetch_test/src/views/ui/appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar,
        body: Flex(
          direction: Axis.horizontal,
          children: [
            Column(
              children: [Text("")],
            ),
            Column(children: [Text("")])
          ],
        ));
  }
}
