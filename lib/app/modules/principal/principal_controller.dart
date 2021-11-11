import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:crud/app/routes/app_pages.dart';
import 'package:crud/models/ModelProvider.dart';
import 'package:get/get.dart';

RxList testeLista = [].obs;

class PrincipalController extends GetxController {
  var objTexto = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getAll();
    steam();
  }

  setValorObjTexto(valor) {
    objTexto.value = valor;
  }

  Future<void> getAll() async {
    List<TypeObject> typeObjectData =
        await Amplify.DataStore.query(TypeObject.classType);
    testeLista.assignAll(typeObjectData);
  }

  void steam() {
    Stream<QuerySnapshot<TypeObject>> stream =
        Amplify.DataStore.observeQuery(TypeObject.classType);

// update local variables each time a new snapshot is received
    stream.listen((QuerySnapshot<TypeObject> snapshot) {
      testeLista.assignAll(snapshot.items);
      Get.toNamed(Routes.LOADER);
      Future.delayed(Duration(seconds: 2), () {
        Get.offNamed(Routes.PRINCIPAL);
      });
    });
  }

  void delete(idObject) async {
    try {
      final typeObjects = await Amplify.DataStore.query(TypeObject.classType,
          where: TypeObject.ID.eq(idObject));
      final myObject = typeObjects.first;
      await Amplify.DataStore.delete(myObject);
      print("Object ${myObject.toString()} deleted");
    } catch (err) {
      print(err);
    }
  }

  void updateValue(idObject, newValue) async {
    try {
      final typeObjects = await Amplify.DataStore.query(TypeObject.classType,
          where: TypeObject.ID.eq(idObject));
      final typeObject = typeObjects.first;
      final updateObject = typeObject.copyWith(value: newValue);
      await Amplify.DataStore.save(updateObject);
      print("Object ${updateObject.toString()} updated");
    } catch (err) {
      print(err);
    }
  }
}
