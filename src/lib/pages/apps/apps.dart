import 'package:flutter/material.dart';
import 'package:portfolio/pages/apps/app.dart';

class Apps extends StatelessWidget {
  Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width / 8;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.93,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: paddingHorizontal,
            right: paddingHorizontal,
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    App(),
                    App(),
                    App(),
                    App(),
                    App(),
                  ],
                ),
              ),
              SizedBox(width: 80),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
