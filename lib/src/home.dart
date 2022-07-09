import 'package:course_flutter_2022/src/about.dart';
import 'package:course_flutter_2022/src/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Class HomePage
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 380,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.center,
              //margin: EdgeInsets.only(top:20),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.purple, width: 10),
              ),
              child: const Text("Home",
                  style: TextStyle(
                      fontSize: 20,
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
            Column(
              children: [
                 Center(
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const AboutPage();
                    },),);
                  },
                  child: const Text("Go To About"),
                ),
                 ),
                 Center(
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const ContactPage();
                    },),);
                  },
                  child: const Text("Go To Contact"),
                ),
                 )
              ],
                
              
            ),
          ],
        ));
  }
}
