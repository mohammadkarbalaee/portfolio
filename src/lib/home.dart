import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:src/cv_download.dart';
import 'package:src/main.dart';
import 'package:src/pages/apps/app.dart';
import 'package:src/pages/apps/apps.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isEnSelected = true;
  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: const TextStyle(fontSize: 12, color: Colors.black),
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
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Mobile Application Developer",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const DownloadCV(),
          ],
        ),
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            color: const Color.fromRGBO(44, 47, 49, 1),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: currentPage == 0 ? Colors.blue : Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        pageController.animateToPage(0,
                            duration: const Duration(microseconds: 1),
                            curve: Curves.linear);
                        currentPage = 0;
                      });
                    },
                    style: ListTileStyle.drawer,
                    title: const Text(
                      "Mobile Apps",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  color: currentPage == 1 ? Colors.blue : Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        pageController.animateToPage(1,
                            duration: const Duration(microseconds: 1),
                            curve: Curves.linear);
                        currentPage = 1;
                      });
                    },
                    title: const Text(
                      "Packages",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  color: currentPage == 2 ? Colors.blue : Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        pageController.animateToPage(2,
                            duration: const Duration(microseconds: 1),
                            curve: Curves.linear);
                        currentPage = 2;
                      });
                    },
                    title: const Text(
                      "Articles",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  Center(
                    child: Apps(),
                  ),
                  Center(
                    child: Text("ios"),
                  ),
                  Center(
                    child: Text("android"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
