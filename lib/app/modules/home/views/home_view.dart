import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:speech_delay/app/modules/home/views/widgets/card_slider.dart';
import 'package:speech_delay/app/modules/home/views/widgets/costum_app_bar.dart';
import 'package:speech_delay/app/modules/home/views/widgets/menu.dart';
import 'package:speech_delay/app/modules/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Stack(
            children: [
              CostumAppBar(),
              Container(
                margin: EdgeInsets.only(top: 180),
                height: 30,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              children: [
                CardSlider(),
                SizedBox(
                  height: 25,
                ),
                Menu(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
