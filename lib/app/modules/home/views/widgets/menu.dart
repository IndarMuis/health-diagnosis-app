import 'package:flutter/material.dart';
import 'package:speech_delay/app/modules/home/views/widgets/card_menu.dart';
import 'package:speech_delay/app/modules/theme.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/routes/app_pages.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Menu",
          style: primaryTextStyle.copyWith(fontSize: 25, fontWeight: bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CEK_GEJALA);
              },
              child: CardMenu(
                color: primaryColor,
                text: "CEK GEJALA",
                assetImage: "consult.png",
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CardMenu(
              color: secondaryColor,
              text: "EDUKASI",
              assetImage: "education.png",
            ),
          ],
        ),
           SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CardMenu(
              color: secondaryColor,
              text: "CHECK UP",
              assetImage: "checkup.png",
            ),
            SizedBox(
              width: 20,
            ),
            CardMenu(
              color: primaryColor,
              text: "TIPS DAN TRIK",
              assetImage: "consultation.png",
            ),
          ],
        ),

      ],
    );
  }
}
