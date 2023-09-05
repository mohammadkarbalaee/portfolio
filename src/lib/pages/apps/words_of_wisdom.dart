import 'package:flutter/material.dart';

class WordsOfWisdomCard extends StatelessWidget {
  final String quote;
  final String author;

  const WordsOfWisdomCard({Key? key, required this.quote, required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
