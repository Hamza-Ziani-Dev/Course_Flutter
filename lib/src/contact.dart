import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// Class ContactPage
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 380,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.center,
            ),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Go To Back"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
