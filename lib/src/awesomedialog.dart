// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// Class AwesomeDialogPage
class AwesomeDialog extends StatelessWidget {
  const AwesomeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AwesomeDialog Page"),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Alert(
      context: context,
      type: AlertType.success,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          // ignore: sort_child_properties_last
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => print("Ok"),
          color: Colors.green,
        ),
        DialogButton(
          // ignore: sort_child_properties_last
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: (){print("cancel");},
          // ignore: prefer_const_literals_to_create_immutables
          color: Colors.red,
        )
      ],
    ).show();
                },
                child: const Text("Show Alert"),
              ),
            ),
          ],
        ));
  }
}
