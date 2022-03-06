import 'package:flutter/material.dart';
import 'package:speech_delay/app/modules/theme.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
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
      child: Center(
        child: Text(
          "HASIL DIAGNOSA",
          style: primaryTextStyle.copyWith(
            color: backgroundColor,
            fontSize: 27,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
