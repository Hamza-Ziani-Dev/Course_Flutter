import 'package:flutter/material.dart';

// Class AboutPage
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 380,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.purple, width: 20),
              ),
              child: const Text("About Page",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      //backgroundColor: Colors.amber,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.purpleAccent,
                            blurRadius: 3.0,
                            offset: Offset(2.0, 2.0))
                      ])),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Go To Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
