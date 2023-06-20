import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_Provider.dart';
import 'package:islami/utilities/app_colors.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            child: Text(
              AppLocalizations.of(context)!.select_your_theme,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: AppColors.accentColorLight),
            ),
          ),
          const SizedBox(height: 22),
          InkWell(
              onTap: () {
                provider.changeCurrentTheme(newTheme: ThemeMode.light);
                Navigator.pop(context);
              },
              child: getThemeRow(provider.currentTheme == ThemeMode.light,
                  AppLocalizations.of(context)!.light)),
          const SizedBox(height: 16),
          InkWell(
              onTap: () {
                provider.changeCurrentTheme(newTheme: ThemeMode.dark);
                Navigator.pop(context);
              },
              child: getThemeRow(provider.currentTheme == ThemeMode.dark,
                  AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget getThemeRow(bool isSelected, String language) {
    if (isSelected) {
      return Text(
        language,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14, color: AppColors.white),
      );
    } else {
      return Text(
        language,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14, color: AppColors.white),
      );
    }
  }
}
