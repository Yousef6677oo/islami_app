import 'package:flutter/material.dart';
import 'package:islami/provider/settings_Provider.dart';
import 'package:islami/utilities/app_colors.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCounter = 0;
  int zekrCounter = 0;
  List<String> azekr = ["الحمد لله", "لا اله الا الله", "الله اكبر"];
  String zekr = "سبحان الله";
  double angleRotate = 0;

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15),
                child: Image.asset(provider.currentTheme == ThemeMode.dark
                    ? "assets/head_sebha_dark.png"
                    : "assets/head_sebha_logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.21,
                    left: MediaQuery.of(context).size.width * 0.05),
                child: GestureDetector(
                    onTap: () {
                      increaseCounter();
                    },
                    child: Transform.rotate(
                        angle: angleRotate,
                        child: Image.asset(
                            provider.currentTheme == ThemeMode.dark
                                ? "assets/body_sebha_dark.png"
                                : "assets/body_sebha_logo.png"))),
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Text(
              "عدد التسبيحات",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: const Color(0xffB7935F)),
              child: Text(
                "$tasbehCounter",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.primaryColorLight),
              child: Text(
                zekr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  increaseCounter() {
    if (tasbehCounter % 33 == 0) {
      if (zekrCounter < 3) {
        zekrCounter++;
      } else {
        zekrCounter = 0;
      }
    }
    zekr = azekr[zekrCounter];
    tasbehCounter++;
    angleRotate += 12;
    setState(() {});
  }
}
