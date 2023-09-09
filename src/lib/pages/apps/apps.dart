import 'package:flutter/material.dart';
import 'package:portfolio/pages/apps/app.dart';

class Apps extends StatelessWidget {
  Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width / 20;

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
                    App(imageLink: "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/shots/menbar1.png",),
                    App(imageLink: "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/shots/menbar2.png",),
                  ],
                ),
              ),
              SizedBox(width: 50),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    App(imageLink: "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/shots/dragme1.png",),
                  ],
                ),
              ),
              SizedBox(width: 50),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    App(imageLink: "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/shots/dragme1.png",),
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
