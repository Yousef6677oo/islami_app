import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/utilities/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../../provider/settings_Provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.select_your_language,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: AppColors.accentColorLight),
          ),
          const SizedBox(height: 22),
          InkWell(
              onTap: () {
                provider.changeCurrentLocal(languageSelected: "en");
                Navigator.pop(context);
              },
              child: getLanguageRow(provider.currentLocal == "en", "English")),
          SizedBox(height: 16),
          InkWell(
              onTap: () {
                provider.changeCurrentLocal(languageSelected: "ar");
                Navigator.pop(context);
              },
              child: getLanguageRow(provider.currentLocal == "ar", "العربية"))
        ],
      ),
    );
  }

  Widget getLanguageRow(bool isSelected, String language) {
    if (isSelected) {
      return Text(
        language,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14, color: AppColors.primaryColorLight),
      );
    } else {
      return Text(
        language,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14, color: AppColors.accentColorLight),
      );
    }
  }
}
