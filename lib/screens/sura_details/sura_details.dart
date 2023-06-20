import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_Provider.dart';
import 'package:provider/provider.dart';

import '../../model/sura_details_args.dart';
import '../../utilities/app_colors.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "Sura Details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent = "";
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (suraContent.isEmpty) {
      readSuraContent(args.fileName);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.currentTheme == ThemeMode.dark
              ? "assets/dark_bg.png"
              : "assets/default_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سورة${args.suraName}",
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(
                      width: 20,
                    ),
                    const ImageIcon(
                        AssetImage("assets/icon awesome-play-circle.png"))
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.1,
                endIndent: MediaQuery.of(context).size.width * 0.1,
                color: AppColors.primaryColorLight,
              ),
              Expanded(
                flex: 9,
                child: (suraContent.isEmpty)
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: suraLines.length,
                        itemBuilder: (context, index) => Text(
                              "(${index + 1})${suraLines[index]}",
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            )),
              ),
            ],
          )),
    );
  }

  readSuraContent(String fileName) async {
    suraContent = await rootBundle.loadString("assets/files/$fileName");
    suraLines = suraContent.trim().split("\n");
    setState(() {});
  }
}
