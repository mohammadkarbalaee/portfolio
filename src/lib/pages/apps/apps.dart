import 'package:flutter/material.dart';
import 'package:src/pages/apps/app.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 150, right: 150),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 100,
          childAspectRatio: 0.5,
          mainAxisSpacing: 70
        ),
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const App();
        },
      ),
    );
  }
}
