import 'package:crud/app/modules/principal/principal_controller.dart';
import 'package:get/get.dart';

class PrincipalBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(PrincipalController());
  }
}
