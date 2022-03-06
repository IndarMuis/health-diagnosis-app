import 'package:get/get.dart';

import '../controllers/cek_gejala_controller.dart';

class CekGejalaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CekGejalaController>(
      () => CekGejalaController(),
    );
  }
}
