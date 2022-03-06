import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:speech_delay/app/data/diagnosa_model.dart';

class DiagnosaService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DiagnosaModel> getData() async {
    CollectionReference diagnosa = _firestore.collection("diagnosa");
    var data = diagnosa.get() as Map<String, dynamic>;
    return DiagnosaModel.fromJson(data);
  }
}