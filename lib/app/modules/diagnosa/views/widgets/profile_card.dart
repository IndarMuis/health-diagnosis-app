import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/diagnosa/controllers/diagnosa_controller.dart';
import 'package:speech_delay/app/modules/theme.dart';

class ProfileCard extends GetView<DiagnosaController> {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
          child: Text(
            "PROFILE",
            style: primaryTextStyle.copyWith(
                fontSize: 22, fontWeight: semiBold, color: primaryColor),
          ),
        ),
        Container(
          // height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: primaryColor, width: 2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Nama : ",
                    style: primaryTextStyle.copyWith(
                        fontSize: 22, fontWeight: bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Obx(() => Text(
                        controller.nama.value,
                        style: primaryTextStyle.copyWith(
                            fontSize: 22, fontWeight: medium),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Jenis Kelamin : ",
                    style: primaryTextStyle.copyWith(
                        fontSize: 22, fontWeight: bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Obx(() => Text(
                        controller.jenisKelamin.value,
                        style: primaryTextStyle.copyWith(
                            fontSize: 22, fontWeight: medium),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
               Row(
                children: [
                  Text(
                    "Umur : ",
                    style: primaryTextStyle.copyWith(
                        fontSize: 22, fontWeight: bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Obx(() => Text(
                        "${controller.umur.value} tahun",
                        style: primaryTextStyle.copyWith(
                            fontSize: 22, fontWeight: medium),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
