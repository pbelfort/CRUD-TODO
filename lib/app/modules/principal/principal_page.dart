import 'package:crud/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'principal_controller.dart';

PrincipalController _principalController = PrincipalController();

class PrincipalPage extends GetView<PrincipalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios_new),
            onTap: () {
              Get.toNamed(Routes.HOME);
            }),
        title: const Text("Principal Page"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          itemCount: testeLista.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          index % 3 == 0 ? Colors.lightBlue : Colors.red,
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            (index + 1).toString(),
                            style: const TextStyle(fontSize: 12),
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Text(
                      testeLista[index].id.toString(),
                      style: const TextStyle(fontSize: 12),
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Text(
                      testeLista[index].value.toString(),
                      style: const TextStyle(fontSize: 12),
                    )),
                    GestureDetector(
                      child: const Icon(
                        Icons.edit,
                        color: Colors.lightBlue,
                      ),
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Deseja Updatar o ID: '),
                          content: Text(testeLista[index].id.toString()),
                          actions: <Widget>[
                            TextFormField(
                                initialValue:
                                    testeLista[index].value.toString(),
                                decoration: const InputDecoration(
                                  labelText: "Digite o novo valor: ",
                                ),
                                keyboardType: TextInputType.name,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                                onChanged: (valor) {
                                  _principalController.setValorObjTexto(valor);
                                }),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                  _principalController.updateValue(
                                      testeLista[index].id.toString(),
                                      _principalController.objTexto.toString());
                                },
                                child: const Text('Update')),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Deseja deletar o ID: '),
                          content: Text(testeLista[index].id.toString()),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () {
                                  _principalController
                                      .delete(testeLista[index].id.toString());
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                                child: const Text('OK')),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
                const Divider(
                  color: Colors.lightBlue,
                  thickness: 3,
                  height: 20,
                )
              ],
            );
          }),
    );
  }
}
