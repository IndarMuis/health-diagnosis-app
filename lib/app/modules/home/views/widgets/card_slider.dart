import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:speech_delay/app/modules/theme.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myItem = [
      "1. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots over 2000 years old.",
      "2. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots over 2000 years old.",
      "3. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots over 2000 years old.",
    ];
    return CarouselSlider(
      options: CarouselOptions(height: 170.0),
      items: myItem.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(Random().nextInt(255),
                        133 + Random().nextInt(119), Random().nextInt(182), 0.22),
                        borderRadius: BorderRadius.circular(20)
                        ),
                child: Center(
                  child: Text(
                    i,
                    textAlign: TextAlign.justify,
                    style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}


// Container(
//   padding: EdgeInsets.all(10),
//   height: 120,
//   width: double.infinity,
//   color: Colors.lightBlue,
//   child: Text(
//     "Selamat datang di aplikasi kami, kami menyediakan berbagai layanan untuk anda yang mempunyai masalah dengan penyakit keterlambatan bicara pada anak (Speech Delay).",
//     textAlign: TextAlign.center,
//     style: primaryTextStyle.copyWith(
//       fontSize: 15,
//     ),
//   ),
// ),



