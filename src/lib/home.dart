import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:src/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/mohammadkarbalaee/portfolio/master/src/assets/profile.png")),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohammad Karbalaee",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Mobile Application Developer",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Text(AppLocalizations.of(context)!.helloWorld),
          TextButton(
            child: const Text("Set locale to English"),
            onPressed: () => MyApp.of(context)!
                .setLocale(const Locale.fromSubtags(languageCode: 'de')),
          ),
        ],
      ),
    );
  }
}
