import 'package:flutter/material.dart';

import '../../../theme.dart';

class CardMenu extends StatelessWidget {
  Color? color;
  String? text;
  String? assetImage;
  CardMenu({this.color, this.text, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width / 2 - 30,
      decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/$assetImage",
              width: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$text",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
