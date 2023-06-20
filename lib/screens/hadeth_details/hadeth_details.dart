import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/model/ahadeth_details_args.dart';
import 'package:islami/provider/settings_Provider.dart';
import 'package:provider/provider.dart';

import '../../utilities/app_colors.dart';

class HadethDetails extends StatefulWidget {
  static String routeName = "Hadeth Details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String suraContent = "";
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    AhadethDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as AhadethDetailsArgs;

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
                    Text(
                      args.hadethTitles,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
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
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          args.hadethContent,
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
