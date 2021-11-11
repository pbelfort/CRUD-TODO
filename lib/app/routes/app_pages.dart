import 'package:crud/app/modules/home/home_binding.dart';
import 'package:crud/app/modules/home/home_page.dart';
import 'package:crud/app/modules/loader/loader_page.dart';
import 'package:crud/app/modules/principal/principal_binding.dart';
import 'package:crud/app/modules/principal/principal_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => Home(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PRINCIPAL,
      page: () => PrincipalPage(),
      binding: PrincipalBinding(),
    ),
    GetPage(name: Routes.LOADER, page: () => Loader()),
  ];
}
