import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:speech_delay/app/modules/cek_gejala/controllers/cek_gejala_controller.dart';

import '../../../data/diagnosa_model.dart';

class DiagnosaController extends GetxController {
  CekGejalaController user = Get.find();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var nama = "".obs;
  var umur = "".obs;
  var jenisKelamin = "".obs;
  var gejala = "".obs;
  @override
  void onInit() {
    nama.value = user.inputNama.text;
    umur.value = user.inputUmur.text;
    jenisKelamin.value = user.inputJenisKelamin.value;
    gejala.value = user.inputStatusGejala.value;
    
    super.onInit();
  }

  void filter() async {
    final result = await firestore
        .collection("diagnosa")
        .where("status", isEqualTo: user.inputStatusGejala.toLowerCase())
        .get();

    print(result.docs.length);
    result.docs.forEach((element) {
      print(element.id);
      print(element.data());
    });
  }

  Future<QuerySnapshot<Object?>> getData() async {
    var diagnosa = await firestore
        .collection("diagnosa")
        .where("status", isEqualTo: user.inputStatusGejala.toLowerCase())
        .get();
    diagnosa.docs.forEach((element) {
      print(element.data()["status"]);
    });
    return diagnosa;
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference diagnosa = firestore.collection("diagnosa");
    print("Status gejala: ${user.inputStatusGejala}");
    return diagnosa.snapshots();
  }

  Future<List<DiagnosaModel>> getDataWithModel() async {
    CollectionReference diagnosa = firestore.collection("diagnosa");
    var data = diagnosa.get() as List;
    return DiagnosaModel.listFromJson(data);
  }
}
