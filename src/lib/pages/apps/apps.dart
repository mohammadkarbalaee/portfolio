import 'package:flutter/material.dart';
import 'package:src/pages/apps/app.dart';

class Apps extends StatelessWidget {
  Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width / 8;

    return Container(
      height: MediaQuery.of(context).size.height * 0.93,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: paddingHorizontal,
            right: paddingHorizontal,
          ),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Column(
                  children: const [
                    App(),
                    App(),
                    App(),
                    App(),
                    App(),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Flexible(
                child: Column(
                  children: const [
                    App(),
                    App(),
                    App(),
                    App(),
                    App(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
