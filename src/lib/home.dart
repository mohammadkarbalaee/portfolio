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
    return Column(
      children: [
        Text(AppLocalizations.of(context)!.helloWorld),
        TextButton(
          child: const Text("Set locale to English"),
          onPressed: () => MyApp.of(context)!
              .setLocale(const Locale.fromSubtags(languageCode: 'de')),
        ),
      ],
    );
  }
}
