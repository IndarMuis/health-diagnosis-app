import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/cek_gejala/controllers/cek_gejala_controller.dart';
import 'package:speech_delay/app/modules/theme.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'dart:convert';

import '../../../../routes/app_pages.dart';

class Content extends GetView<CekGejalaController> {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget inputNama() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.inputNama,
            autocorrect: false,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      );
    }

    Widget inputTanggalLahir() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tanggal Lahir",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.inputTanggal,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now());

              if (pickedDate != null) {
                print(pickedDate);
                String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);

                controller.inputTanggal.text = formattedDate;
                print(controller.inputTanggal.text);
              } else {
                print("Date is not selected");
              }
            },
          )
        ],
      );
    }

    Widget inputUmur() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Umur",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller.inputUmur,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          )
        ],
      );
    }

    Widget inputJenisKelamin() {
      List<String> JenisKelamin = ["Laki-Laki", "Perempuan"];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jenis Kelamin",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownSearch<String>(
            mode: Mode.MENU,
            showClearButton: true,
            showSelectedItems: true,
            items: ["Laki-Laki", "Perempuan"],
            dropdownSearchDecoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                contentPadding: EdgeInsets.all(15),
                hintText: "Pilih"),
            onChanged: (value) {
              controller.inputJenisKelamin.value = value!;
            },
          )
        ],
      );
    }

    Widget inputPendidikan() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pendidikan",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.inputPendidikan,
            onChanged: (value) {
              controller.inputPendidikan.text = value;
            },
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      );
    }

    asupanGizi() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Status Gizi",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownSearch<String>(
            mode: Mode.MENU,
            showClearButton: true,
            showSelectedItems: true,
            items: [
              "Baik",
              "Cukup",
              "TIdak Cukup",
            ],
            dropdownSearchDecoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                contentPadding: EdgeInsets.all(15),
                hintText: "Pilih"),
            onChanged: (value) {
              controller.inputStatusGejala.value = value!;
            },
          )
        ],
      );
    }

    Widget inputStatusGejala() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gejala",
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownSearch<String>(
            mode: Mode.MENU,
            showClearButton: true,
            showSelectedItems: true,
            items: [
              "Kesulitan memahami perintah",
              "Tidak merespon suara",
              "Tidak memiliki ketertarikan berkomunikasi",
              "Menyampaikan sesuatu dengan gerakan",
            ],
            dropdownSearchDecoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                contentPadding: EdgeInsets.all(15),
                hintText: "Pilih"),
            onChanged: (value) {
              controller.inputStatusGejala.value = value!;
            },
          )
        ],
      );
    }

    Widget processButton() {
      return Container(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          child: Text("Cek Gejala"),
          onPressed: () {
            print(controller.inputNama.text);
            print(controller.inputStatusGejala.value);
            controller.addUser(
                nama: controller.inputNama.text.toLowerCase(),
                tanggalLahir: controller.inputTanggal.text,
                umur: int.parse(controller.inputUmur.text),
                jenisKelamin: controller.inputJenisKelamin.value.toLowerCase(),
                status: controller.inputStatusGejala.value.toLowerCase());
          },
          style: ElevatedButton.styleFrom(
              primary: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: defaultMargin),
      // margin: EdgeInsets.symmetric(vertical: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputNama(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 5,
                child: inputTanggalLahir(),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2 - 55,
                child: inputUmur(),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          inputJenisKelamin(),
          SizedBox(
            height: 20,
          ),
          asupanGizi(),
          SizedBox(
            height: 40,
          ),
          inputStatusGejala(),
          SizedBox(
            height: 40,
          ),
          processButton()
        ],
      ),
    );
  }
}
