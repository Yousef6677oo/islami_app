import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/screens/home/tabs/settings/theme_bottom_sheet.dart';
import 'package:islami/utilities/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../../provider/settings_Provider.dart';
import 'Language_bottom_sheet.dart';

class SettingsTap extends StatefulWidget {
  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              AppLocalizations.of(context)!.language,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.accentColorLight),
            ),
          ),
          InkWell(
              onTap: () {
                onLanguageRowClicked();
              },
              child: getRowOption(
                  provider.currentLocal == "en" ? "English" : "العربية")),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              AppLocalizations.of(context)!.mode,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.accentColorLight),
            ),
          ),
          InkWell(
              onTap: () {
                onThemeRowClicked();
              },
              child: getRowOption(provider.currentTheme == ThemeMode.dark
                  ? AppLocalizations.of(context)!.dark
                  : AppLocalizations.of(context)!.light)),
        ],
      ),
    );
  }

  Widget getRowOption(String selectionOption) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: AppColors.primaryColorLight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(selectionOption, style: Theme.of(context).textTheme.titleSmall),
          const Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }

  void onLanguageRowClicked() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }

  void onThemeRowClicked() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }
}
