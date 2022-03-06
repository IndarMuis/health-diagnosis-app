import 'package:get/get.dart';

import 'package:speech_delay/app/modules/cek_gejala/bindings/cek_gejala_binding.dart';
import 'package:speech_delay/app/modules/cek_gejala/views/cek_gejala_view.dart';
import 'package:speech_delay/app/modules/diagnosa/bindings/diagnosa_binding.dart';
import 'package:speech_delay/app/modules/diagnosa/views/diagnosa_view.dart';
import 'package:speech_delay/app/modules/home/bindings/home_binding.dart';
import 'package:speech_delay/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CEK_GEJALA,
      page: () => CekGejalaView(),
      binding: CekGejalaBinding(),
    ),
    GetPage(
      name: _Paths.DIAGNOSA,
      page: () => DiagnosaView(),
      binding: DiagnosaBinding(),
    ),
  ];
}
