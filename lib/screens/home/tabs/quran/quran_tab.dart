import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../model/sura_details_args.dart';
import '../../../sura_details/sura_details.dart';

List<String> suraName = [
  "الفاتحه",
  "البقرة",
  "آل عمران",
  "النساء",
  "المائدة",
  "الأنعام",
  "الأعراف",
  "الأنفال",
  "التوبة",
  "يونس",
  "هود",
  "يوسف",
  "الرعد",
  "إبراهيم",
  "الحجر",
  "النحل",
  "الإسراء",
  "الكهف",
  "مريم",
  "طه",
  "الأنبياء",
  "الحج",
  "المؤمنون",
  "النّور",
  "الفرقان",
  "الشعراء",
  "النّمل",
  "القصص",
  "العنكبوت",
  "الرّوم",
  "لقمان",
  "السجدة",
  "الأحزاب",
  "سبأ",
  "فاطر",
  "يس",
  "الصافات",
  "ص",
  "الزمر",
  "غافر",
  "فصّلت",
  "الشورى",
  "الزخرف",
  "الدّخان",
  "الجاثية",
  "الأحقاف",
  "محمد",
  "الفتح",
  "الحجرات",
  "ق",
  "الذاريات",
  "الطور",
  "النجم",
  "القمر",
  "الرحمن",
  "الواقعة",
  "الحديد",
  "المجادلة",
  "الحشر",
  "الممتحنة",
  "الصف",
  "الجمعة",
  "المنافقون",
  "التغابن",
  "الطلاق",
  "التحريم",
  "الملك",
  "القلم",
  "الحاقة",
  "المعارج",
  "نوح",
  "الجن",
  "المزّمّل",
  "المدّثر",
  "القيامة",
  "الإنسان",
  "المرسلات",
  "النبأ",
  "النازعات",
  "عبس",
  "التكوير",
  "الإنفطار",
  "المطفّفين",
  "الإنشقاق",
  "البروج",
  "الطارق",
  "الأعلى",
  "الغاشية",
  "الفجر",
  "البلد",
  "الشمس",
  "الليل",
  "الضحى",
  "الشرح",
  "التين",
  "العلق",
  "القدر",
  "البينة",
  "الزلزلة",
  "العاديات",
  "القارعة",
  "التكاثر",
  "العصر",
  "الهمزة",
  "الفيل",
  "قريش",
  "الماعون",
  "الكوثر",
  "الكافرون",
  "النصر",
  "المسد",
  "الإخلاص",
  "الفلق",
  "الناس"
];

Map<String, int> suraNameAndNumberAyat = {
  "الفاتحه": 7,
  "البقرة": 286,
  "آل عمران": 200,
  "النساء": 176,
  "المائدة": 120,
  "الأنعام": 165,
  "الأعراف": 206,
  "الأنفال": 75,
  "التوبة": 129,
  "يونس": 109,
  "هود": 123,
  "يوسف": 111,
  "الرعد": 43,
  "إبراهيم": 52,
  "الحجر": 99,
  "النحل": 128,
  "الإسراء": 111,
  "الكهف": 110,
  "مريم": 98,
  "طه": 135,
  "الأنبياء": 112,
  "الحج": 78,
  "المؤمنون": 118,
  "النّور": 64,
  "الفرقان": 77,
  "الشعراء": 227,
  "النّمل": 93,
  "القصص": 88,
  "العنكبوت": 69,
  "الرّوم": 60,
  "لقمان": 34,
  "السجدة": 30,
  "الأحزاب": 73,
  "سبأ": 54,
  "فاطر": 45,
  "يس": 83,
  "الصافات": 182,
  "ص": 88,
  "الزمر": 75,
  "غافر": 85,
  "فصّلت": 54,
  "الشورى": 53,
  "الزخرف": 89,
  "الدّخان": 59,
  "الجاثية": 37,
  "الأحقاف": 35,
  "محمد": 38,
  "الفتح": 29,
  "الحجرات": 18,
  "ق": 45,
  "الذاريات": 60,
  "الطور": 49,
  "النجم": 62,
  "القمر": 55,
  "الرحمن": 78,
  "الواقعة": 96,
  "الحديد": 29,
  "المجادلة": 22,
  "الحشر": 24,
  "الممتحنة": 13,
  "الصف": 14,
  "الجمعة": 11,
  "المنافقون": 11,
  "التغابن": 18,
  "الطلاق": 12,
  "التحريم": 12,
  "الملك": 30,
  "القلم": 52,
  "الحاقة": 52,
  "المعارج": 44,
  "نوح": 28,
  "الجن": 28,
  "المزّمّل": 20,
  "المدّثر": 56,
  "القيامة": 40,
  "الإنسان": 31,
  "المرسلات": 50,
  "النبأ": 40,
  "النازعات": 46,
  "عبس": 42,
  "التكوير": 29,
  "الإنفطار": 19,
  "المطفّفين": 36,
  "الإنشقاق": 25,
  "البروج": 22,
  "الطارق": 17,
  "الأعلى": 19,
  "الغاشية": 26,
  "الفجر": 30,
  "البلد": 20,
  "الشمس": 15,
  "الليل": 21,
  "الضحى": 11,
  "الشرح": 8,
  "التين": 8,
  "العلق": 19,
  "القدر": 5,
  "البينة": 8,
  "الزلزلة": 8,
  "العاديات": 11,
  "القارعة": 11,
  "التكاثر": 8,
  "العصر": 3,
  "الهمزة": 9,
  "الفيل": 5,
  "قريش": 4,
  "الماعون": 7,
  "الكوثر": 3,
  "الكافرون": 6,
  "النصر": 3,
  "المسد": 5,
  "الإخلاص": 4,
  "الفلق": 5,
  "الناس": 6
};

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset("assets/qur2an_screen_logo.png")),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Text(
                AppLocalizations.of(context)!.number_ayat,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              )),
              VerticalDivider(
                color: Theme.of(context).dividerColor,
                thickness: 3,
              ),
              Expanded(
                  child: Text(
                AppLocalizations.of(context)!.sura_name,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Expanded(
            flex: 7,
            child: ListView.builder(
                itemCount: suraName.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraDetails.routeName,
                          arguments: SuraDetailsArgs(
                              suraName: suraName[index],
                              fileName: "${index + 1}.txt"));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              "${suraNameAndNumberAyat[suraName[index]]}",
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            )),
                            VerticalDivider(
                              color: Theme.of(context).dividerColor,
                              thickness: 3,
                            ),
                            Expanded(
                                child: Text(
                              suraName[index],
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            )),
                          ],
                        ),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}