import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/home/controllers/home_controller.dart';
import 'package:speech_delay/app/modules/theme.dart';

class CardSlider extends GetView<HomeController> {
  const CardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List myItem = [
    //   "Anak-anak yang mengalami keterlambatan dalam berbicara dan berbahasa akan mengakibatkan anak sulit mencapai pemahaman.",
    //   "Remaja dengan gangguan perkembangan bahasa akan memiliki kadar kecemasan yang lebih tinggi dibandingkan dengan temannya yang tidak mengalaminya.",
    //   "Pada anak yang mengalami keterlambatan berbicara akan lebih beresiko mengalami kesulitan dalam membangun hubungan dengan teman sebaya.",
    // ];
    return StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.dataFirebase.collection("informasi").snapshots(),
        builder: (context, snapshot) {
          var data = snapshot.data!.docs.first['info'];
          List<String> dataInfo = [];
          if (snapshot.connectionState == ConnectionState.active) {
            for (var value in data) {
              dataInfo.add(value);
            }
            return CarouselSlider(
              options: CarouselOptions(height: 170.0),
              items: dataInfo.map((i) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(
                            Random().nextInt(255),
                            133 + Random().nextInt(119),
                            Random().nextInt(182),
                            0.22),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      i,
                      textAlign: TextAlign.justify,
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: regular),
                    ));
              }).toList(),
            );
          }
          return CircularProgressIndicator(
            color: primaryColor,
          );
        });
  }
}
