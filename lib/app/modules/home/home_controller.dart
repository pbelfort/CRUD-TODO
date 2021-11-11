import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../data/repository/i_news_repository.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:crud/models/ModelProvider.dart';
import 'package:crud/models/TypeObject.dart';

class HomePageController extends GetxController {
  final INewsRepository newsRepository;

  HomePageController(this.newsRepository);

  @override
  void onInit() {
    super.onInit();
    findNews();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  Future<void> findNews() async {}
}

class HomeController extends GetxController {
  RxList typeObjectsBD = <TypeObject>[].obs;
  var isSynced = false.obs;
  var objTexto = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  setValorObjTexto(valor) {
    objTexto.value = valor;
  }

  void create(valor) async {
    final newObject = TypeObject(value: valor);
    try {
      await Amplify.DataStore.save(newObject);
      print('Object ${newObject.toString()} Saved');
    } catch (err) {
      print(err);
    }
  }
}
