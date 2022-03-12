import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:speech_delay/app/modules/theme.dart';
import 'package:speech_delay/app/routes/app_pages.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(Routes.HOME);
        },
        child: Text(
          "Selesai",
          style: primaryTextStyle.copyWith(fontSize: 20, color: primaryTextColor),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: successColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: successColor),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
