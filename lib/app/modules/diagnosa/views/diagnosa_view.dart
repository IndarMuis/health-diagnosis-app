import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:speech_delay/app/data/diagnosa_model.dart';
import 'package:speech_delay/app/modules/diagnosa/views/widgets/home_button.dart';
import 'package:speech_delay/app/modules/diagnosa/views/widgets/profile_card.dart';
import 'package:speech_delay/app/modules/theme.dart';

import '../controllers/diagnosa_controller.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/diagnosa_card.dart';

class DiagnosaView extends GetView<DiagnosaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          CustomAppbar(),
          SizedBox(
            height: 50,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileCard(),
                  SizedBox(
                    height: 45,
                  ),
                  DiagnosaCard(),
                  SizedBox(
                    height: 65,
                  ),
                  HomeButton()
                ],
              )),
              ],
            ),
        ));
  }
}
