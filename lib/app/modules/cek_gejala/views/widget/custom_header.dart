import 'package:flutter/material.dart';
import 'package:speech_delay/app/modules/theme.dart';
import 'package:get/route_manager.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(300, 50),
            bottomRight: Radius.elliptical(300, 50),
          ),
          gradient: LinearGradient(
              colors: [
                primaryColor,
                primaryColor.withOpacity(0.6),
              ],
              stops: [
                0.5,
                1.0
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter)),
      child: Row(
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
              size: 30,
            )),
          ),
          SizedBox(width: 63),
          Center(
            child: Text(
              "CEK GEJALA",
              style: primaryTextStyle.copyWith(
                color: backgroundColor,
                fontSize: 27,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
