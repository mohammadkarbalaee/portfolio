import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        "https://raw.githubusercontent.com/"
        "mohammadkarbalaee/portfolio/master/src/assets/shots/menbar1.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
