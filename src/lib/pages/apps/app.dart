import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: Image.network(
        "https://raw.githubusercontent.com/"
        "mohammadkarbalaee/portfolio/master/src/assets/shots/menbar1.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
