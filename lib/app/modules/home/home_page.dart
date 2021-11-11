import 'package:crud/app/modules/principal/principal_controller.dart';
import 'package:crud/app/modules/widgets/drawer_app.dart';
import 'package:crud/app/routes/app_pages.dart';
import 'package:crud/app/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends GetView<HomePageController> {
  // ignore: unused_field
  HomeController _homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerApp(),
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Text("Home Page"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.lists,
              width: 140,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter a new TODO value...",
                        ),
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        onChanged: (valor) {
                          _homeController.setValorObjTexto(valor);
                        })),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                _homeController.create(_homeController.objTexto.value);
                Get.toNamed(Routes.PRINCIPAL);
              },
              child: const Text(
                "Create",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        ));
  }
}
