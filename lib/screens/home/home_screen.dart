import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/screens/home/tabs/ahadeth/ahadeth_tab.dart';
import 'package:islami/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami/screens/home/tabs/radio/radio_tab.dart';
import 'package:islami/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami/screens/home/tabs/settings/settings_tab.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_Provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 4;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTap(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
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
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: Container(
          child: tabs[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          showUnselectedLabels: false,
          selectedFontSize: 12,
          iconSize: 36,
          items: [
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.quran,
                icon: const ImageIcon(AssetImage("assets/icon_quran.png"))),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.ahadeth,
                icon: const ImageIcon(AssetImage("assets/icon_hadeth.png"))),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.sebha,
                icon: const ImageIcon(AssetImage("assets/icon_sebha.png"))),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.radio,
                icon: const ImageIcon(AssetImage("assets/icon_radio.png"))),
            BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.settings,
                icon: const ImageIcon(AssetImage("assets/settings_icon.png"))),
          ],
        ),
      ),
    );
  }
}
