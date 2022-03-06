import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/diagnosa/controllers/diagnosa_controller.dart';
import 'package:speech_delay/app/modules/theme.dart';

class DiagnosaCard extends GetView<DiagnosaController> {
  // String? status;
  // String? penanganan;

  Widget penanganan(List<String> strings) {
    return new Column(children: strings.map((item) => new Text(item)).toList());
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore diagnosa = FirebaseFirestore.instance;
    return Obx(() => StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.firestore
            .collection("diagnosa")
            .where("status", isEqualTo: controller.status.value.toLowerCase())
            .snapshots(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.connectionState == ConnectionState.active) {
            var data = snapshot.data!.docs;
          print(snapshot.connectionState == ConnectionState);
          print(data.length);
          print(controller.status.value);
          return Column(
            children: data.map((e) {
              List<String> p = [];
              for (var item in e['penanganan']) {
                p.add(item);
              }
              print(p);
              print(p);
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "DIAGNOSA",
                      style: primaryTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: semiBold,
                          color: primaryColor),
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
                          topLeft: Radius.elliptical(300, 30),
                          topRight: Radius.elliptical(300, 30),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Status Gejala : ",
                              style: primaryTextStyle.copyWith(
                                  fontSize: 22, fontWeight: bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              e['status'].toString().toUpperCase(),
                              style: primaryTextStyle.copyWith(
                                  fontSize: 22, fontWeight: medium),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Penanganan : ",
                              style: primaryTextStyle.copyWith(
                                  fontSize: 22, fontWeight: bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: p.map((e) {
                            var index = p.indexOf(e) + 1;
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${index.toString()}. ",
                                      style: primaryTextStyle.copyWith(
                                          fontSize: 22, fontWeight: medium),
                                    ),
                                    Flexible(
                                      child: Text(
                                        "${e}",
                                        style: primaryTextStyle.copyWith(
                                            fontSize: 22, fontWeight: medium),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                              ],
                            );
                          }).toList(),
                        )
                        // Text(
                        //   "1. ${e['penanganan'][0]}",
                        //   style: primaryTextStyle.copyWith(
                        //       fontSize: 22, fontWeight: medium),
                        // ),
                        // Text(
                        //   "2. ${e['penanganan'][1]}",
                        //   style: primaryTextStyle.copyWith(
                        //       fontSize: 22, fontWeight: medium),
                        // ),
                        // Text(
                        //   "3. ${e['penanganan'][2]}",
                        //   style: primaryTextStyle.copyWith(
                        //       fontSize: 22, fontWeight: medium),
                        // ),
                        // Text(
                        //   "4. ${e['penanganan'][3]}",
                        //   style: primaryTextStyle.copyWith(
                        //       fontSize: 22, fontWeight: medium),
                        // ),
                        // Text(
                        //   "5. ${e['penanganan'][4]}",
                        //   style: primaryTextStyle.copyWith(
                        //       fontSize: 22, fontWeight: medium),
                        // ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          );
          }
            return CircularProgressIndicator(color: secondaryColor,);
          
        }));
  }
}
