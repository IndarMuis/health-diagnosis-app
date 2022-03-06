import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class DiagnosaModel {
  final String penanganan;
  final String status;

  DiagnosaModel({required this.penanganan, required this.status});

  factory DiagnosaModel.fromJson(Map<String,dynamic> json) {
    // var data = json.doc;
    return DiagnosaModel(status:  json['status'], penanganan: json["penanganan"]);
  }

  static List<DiagnosaModel> listFromJson(List? data) {
    if (data!.isEmpty || data.length == 0) return [];
    return data.map((value) => DiagnosaModel.fromJson(value)).toList();
  }
}