import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: Image.asset("assets/radio_image.png")),
        Expanded(
            flex: 1,
            child: Text(
              "إذاعة القرآن الكريم",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            )),
        Expanded(
            flex: 2,
            child: Image.asset(
              "assets/player_button.png",
              alignment: Alignment.topCenter,
            ))
      ],
    );
  }
}
