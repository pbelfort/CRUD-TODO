import 'package:get/get.dart';

import '../../data/provider/news_provider.dart';
import '../../data/repository/i_news_repository.dart';
import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<INewsRepository>(NewsProvider());
    Get.put(HomePageController(Get.find()));
    Get.put(HomeController());
  }
}
