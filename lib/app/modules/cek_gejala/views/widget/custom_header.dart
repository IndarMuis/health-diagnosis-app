import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/theme.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: backgroundColor,
                    size: 25,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "CEK GEJALA",
                style: primaryTextStyle.copyWith(
                    fontSize: 25, fontWeight: medium, color: backgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
