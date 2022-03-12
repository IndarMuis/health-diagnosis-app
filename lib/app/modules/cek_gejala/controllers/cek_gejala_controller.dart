import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/theme.dart';
import 'package:speech_delay/app/routes/app_pages.dart';

class CekGejalaController extends GetxController {
  TextEditingController inputTanggal = TextEditingController();
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputUmur = TextEditingController();
  TextEditingController inputPendidikan = TextEditingController();
  
  var inputJenisKelamin = "".obs;
  var inputStatusGejala = "".obs;
  var inputStatusGizi = "".obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addUser(
      {String? nama,
      String? status,
      String? tanggalLahir,
      int? umur,
      String? jenisKelamin}) async {
    CollectionReference user = firestore.collection("users");

    try {
      await user.add({
        "nama": nama,
        "tanggal_lahir": tanggalLahir,
        "umur": umur,
        "jenis_kelamin": jenisKelamin,
        "status gejala": status,
      });
      var duration = Duration(seconds: 3);
      Timer(
          duration,
          () => CircularProgressIndicator(
                color: primaryColor,
              ));
      Get.offAndToNamed(Routes.DIAGNOSA);
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi kesalahan",
        middleText: e.toString(),
      );
    }
  }

}
