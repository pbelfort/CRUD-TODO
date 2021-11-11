import 'package:crud/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      const UserAccountsDrawerHeader(
        accountName: Text("Pedro H. Belfort"),
        accountEmail: Text("pedro.belfort@qwti.com.br"),
        currentAccountPicture: CircleAvatar(
          radius: 30.0,
          backgroundImage:
              NetworkImage('https://source.unsplash.com/UJLAMjEjISo/800x600'),
          backgroundColor: Colors.transparent,
        ),
      ),
      ListTile(
          leading: Icon(Icons.list_alt_outlined),
          title: Text("TODO List"),
          subtitle: Text("My TODO List"),
          //   trailing: Icon(Icons.arrow_forward),
          onTap: () => Get.toNamed(Routes.PRINCIPAL)),
      ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Profile"),
          subtitle: Text("User profile"),
          //   trailing: Icon(Icons.arrow_forward),
          onTap: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Perfil Clicked'),
                  content: Text("Text notify"),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: const Text('OK')),
                  ],
                ),
              ))
    ]));
  }
}
