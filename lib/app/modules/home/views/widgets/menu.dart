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
            Stack(
              children: [
                CardMenu(
                  color: secondaryColor,
                  text: "EDUKASI",
                  assetImage: "education.png",
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "COOMING SOON",
                      style: primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: light,
                        fontSize: 17
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Stack(
              children: [
                CardMenu(
                  color: secondaryColor,
                  text: "CHECK UP",
                  assetImage: "checkup.png",
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "COOMING SOON",
                      style: primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: light,
                        fontSize: 17
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                CardMenu(
                  color: primaryColor,
                  text: "TIPS",
                  assetImage: "consultation.png",
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "COOMING SOON",
                      style: primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: light,
                        fontSize: 17
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
