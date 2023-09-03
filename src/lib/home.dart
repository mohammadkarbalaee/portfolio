import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:src/cv_download.dart';
import 'package:src/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isEnSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(44,47,49,1),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: const TextStyle(fontSize: 12),
              ),
              TextButton(
                onPressed: () {
                  MyApp.of(context)!
                      .setLocale(const Locale.fromSubtags(languageCode: 'en'));
                  setState(() {
                    isEnSelected = true;
                  });
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isEnSelected ? Colors.blue : Colors.transparent,
                      width: 2,
                    ),
                    // Replace the image with your image URL
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/en.png",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                  MyApp.of(context)!
                      .setLocale(const Locale.fromSubtags(languageCode: 'de'));
                  setState(() {
                    isEnSelected = false;
                  });
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: !isEnSelected ? Colors.blue : Colors.transparent,
                      width: 2,
                    ),
                    // Replace the image with your image URL
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://raw.githubusercontent.com/"
                        "mohammadkarbalaee/portfolio/master/src/assets/de.png",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://raw.githubusercontent.com/mohammadkarbalaee/"
                    "portfolio/master/src/assets/icon.png",
                  ),
                ),
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
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Mobile Application Developer",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white70
                  ),
                )
              ],
            ),
            const SizedBox(width: 20,),
            const DownloadCV(),
          ],
        ),
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            color: const Color.fromRGBO(44,47,49,1),
            child: const Column(
              children: [
                ListTile(
                  title: Text("Item 1"),
                ),
                ListTile(
                  title: Text("Item 2"),
                ),
                ListTile(
                  title: Text("Item 3"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(31,31,31,1),
              child: const Center(
                child: Text("Main Content"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
