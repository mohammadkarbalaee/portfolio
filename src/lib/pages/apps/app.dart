import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final String imageLink;
  const App({Key? key, required this.imageLink}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 700,
        child: FadeInImage.assetNetwork(
          placeholder: "mock.png",
          fadeInDuration: const Duration(milliseconds: 300),
          fadeInCurve: Curves.easeIn,
          fit: BoxFit.contain,
          image: imageLink,
        ),
      ),
    );
  }
}
