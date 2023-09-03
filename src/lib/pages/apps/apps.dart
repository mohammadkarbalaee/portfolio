import 'package:flutter/material.dart';
import 'package:src/pages/apps/app.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width / 8;

    return Padding(
        padding: EdgeInsets.only(
            top: 30, left: paddingHorizontal, right: paddingHorizontal),
        child: Row(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: [
                  App(),
                  App(),
                  App(),
                  App(),
                  App(),
                ],
              ),
            ),
            SizedBox(width: 30),
            Flexible(
              child: ListView(
                children: [
                  App(),
                  App(),
                  App(),
                  App(),
                  App(),
                ],
              ),
            ),
          ],
        ));
  }
}
