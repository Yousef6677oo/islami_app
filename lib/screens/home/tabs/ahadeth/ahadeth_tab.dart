import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../model/ahadeth_details_args.dart';
import '../../../hadeth_details/hadeth_details.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<AhadethDetailsArgs> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      readAhadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset("assets/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Text(
          AppLocalizations.of(context)!.al_Ahadeth,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Expanded(
            flex: 7,
            child: ListView.builder(
                itemCount: ahadethList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, HadethDetails.routeName,
                              arguments: ahadethList[index]);
                        },
                        child: Text(
                          ahadethList[index].hadethTitles,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )))
      ],
    );
  }

  readAhadethFile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = hadethFile.split("#");

    for (int i = 0; i < ahadeth.length; i++) {
      List<String> singleHadethLines = ahadeth[i].trim().split("\n");
      String title = singleHadethLines.removeAt(0);
      String content = singleHadethLines.join("\n");
      ahadethList
          .add(AhadethDetailsArgs(hadethTitles: title, hadethContent: content));
    }
    setState(() {});
  }
}
