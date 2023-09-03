import 'package:flutter/material.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: const Row(
          children: [
            Icon(Icons.cloud_download_rounded),
            SizedBox(
              width: 7,
            ),
            Text("CV")
          ],
        ));
  }
}
