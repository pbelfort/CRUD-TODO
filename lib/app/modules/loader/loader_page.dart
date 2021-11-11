import 'package:flutter/material.dart';

void main() => runApp(Loader());

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Loading"),
        ),
        body: const Center(
          child: CircularProgressIndicator(
            strokeWidth: 10,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
          ),
        ));
  }
}
