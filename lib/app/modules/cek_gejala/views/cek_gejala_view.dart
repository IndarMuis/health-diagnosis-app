import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:speech_delay/app/modules/cek_gejala/views/widget/custom_header.dart';
import 'package:speech_delay/app/modules/theme.dart';

import '../controllers/cek_gejala_controller.dart';
import 'widget/content.dart';

class CekGejalaView extends GetView<CekGejalaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
        children: [
          CustomHeader(),
          SizedBox(height: 20,),
          Content(),
        ],
      )),
    );
  }
}
