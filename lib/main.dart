// ignore_for_file: unused_import
import 'package:course_flutter_2022/src/about.dart';
import 'package:course_flutter_2022/src/awesomedialog.dart';
import 'package:course_flutter_2022/src/dropdownsearch.dart';
import 'package:course_flutter_2022/src/searchdelegate.dart';
import 'package:course_flutter_2022/src/alertdialog.dart';
import 'package:course_flutter_2022/src/bottomnavigationbar.dart';
import 'package:course_flutter_2022/src/circleavatar.dart';
import 'package:course_flutter_2022/src/ckeckbox.dart';
import 'package:course_flutter_2022/src/containerscroll.dart';
import 'package:course_flutter_2022/src/dropdownbuttons.dart';
import 'package:course_flutter_2022/src/gridview.dart';
import 'package:course_flutter_2022/src/home.dart';
import 'package:course_flutter_2022/src/listtile.dart';
import 'package:course_flutter_2022/src/listview.dart';
import 'package:course_flutter_2022/src/listviewbuilder.dart';
import 'package:course_flutter_2022/src/pageview.dart';
import 'package:course_flutter_2022/src/radiolist.dart';
import 'package:course_flutter_2022/src/searchdelegate.dart';
import 'package:course_flutter_2022/src/slider.dart';
import 'package:course_flutter_2022/src/switchbutton.dart';
import 'package:course_flutter_2022/src/tapbar.dart';
import 'package:course_flutter_2022/src/textformfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Class MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// Class Home
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          height: 200,
          width: 500,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          alignment: Alignment.center,
          //margin: EdgeInsets.only(top:20),
          decoration: BoxDecoration(
              color: Colors.amber,
              //border: Border(
              // left: BorderSide(color: Colors.green, width: 10),
              // right: BorderSide(color: Colors.red, width: 10),
              // bottom: BorderSide(color: Colors.blue, width: 10),
              // top: BorderSide(color: Colors.deepOrange, width: 10)
              // )
              border: Border.all(color: Colors.purple, width: 20),
              // boxShadow: [BoxShadow(color : Colors.black, blurRadius: 10)]
              // borderRadius: BorderRadius.circular(100),
              // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/image.jpg"),
                repeat: ImageRepeat.noRepeat,
              )),
          child: const Text("Home Page",
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
        ));
  }
}



// Class ColumnPage
class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App"),
        ),
        drawer: const Drawer(),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(color: Colors.black),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: const Text("Container One", style: TextStyle(fontSize: 20)),
                )),
            Divider(color: Colors.black),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  width: double.infinity,
                  child: Text("Container Two", style: TextStyle(fontSize: 20)),
                )),
            Divider(color: Colors.black),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                  width: double.infinity,
                  child:
                      Text("Container Three", style: TextStyle(fontSize: 20)),
                )),
            Divider(color: Colors.black),
            //VerticalDivider(color: Colors.black),
            //Image.asset("images/energy.jpg"),
          ],
        ));
  }
}

// Class RowPage
class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expanded Row"),
        ),
        drawer: Drawer(),
        body: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.indigo,
                  child: Text("Container One !"),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  child: Text("Container Two !"),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.cyanAccent,
                  child: Text("Container Three !"),
                )),
          ],
        ));
  }
}

// Class Widget Stack
class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          width: 400,
          height: 400,
          color: Colors.indigo,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Text("Container Red"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text("Container Green"),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.amber,
                child: Text("Container Amber"),
              ),
            ],
          ),
        ));
  }
}

// Class Widget Stack Possition Overflow
class StackPossitionOverflowPage extends StatelessWidget {
  const StackPossitionOverflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Container(
          width: 400,
          height: 400,
          color: Colors.indigo,
          child: Stack(
            //overflow: Overflow.visible,
            children: [
              Positioned(
                  width: 200,
                  height: 200,
                  top: 340,
                  //left: 100,
                  //right: 20,
                  child: Container(
                    color: Colors.deepOrange,
                    child: Text("Container Test"),
                  ))
            ],
          ),
        ));
  }
}

// Class Widget Icon
class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Icon"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Icon(
        Icons.shop,
        size: 100,
        color: Colors.orange,
      ),
    );
  }
}

// Class Exemple One
class ExempleOnePage extends StatelessWidget {
  const ExempleOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemple One"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(children: [
        Center(
          child: Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.only(left: 10, right: 10, top: 100, bottom: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(color: Colors.black, width: 2),
                  right: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                  top: BorderSide(color: Colors.black, width: 2)),
              color: Colors.blue,
            ),
            child: Text(
              "Strawberry Pavlova Recipe",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20, left: 40, bottom: 5, top: 5),
            child: Text(
              "This Strawberry  Recipe This Strawberry "
              "Pavlova Recipe Strawberry Pavlova  "
              " Strawberry Pavlova Recipe This Strawberry"
              " Pavlova Recipe",
              style: TextStyle(fontSize: 20, height: 1),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 150,
          margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.black, width: 2),
                right: BorderSide(color: Colors.black, width: 2),
                bottom: BorderSide(color: Colors.black, width: 2),
                top: BorderSide(color: Colors.black, width: 2)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,
                          size: 20, color: Colors.amberAccent[700]),
                      Icon(Icons.star,
                          size: 20, color: Colors.amberAccent[700]),
                      Icon(Icons.star,
                          size: 20, color: Colors.amberAccent[700]),
                      Icon(Icons.star, size: 20, color: Colors.black),
                      Icon(Icons.star, size: 20, color: Colors.black),
                      Icon(Icons.star, size: 20, color: Colors.black),
                    ],
                  ),
                  Text(
                    "7 Reviews",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.restaurant, size: 30, color: Colors.green),
                        Padding(
                            padding: EdgeInsets.all(10), child: Text("Feed")),
                        Text("2 - 4"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.category, size: 30, color: Colors.green),
                        Padding(
                            padding: EdgeInsets.all(10), child: Text("Feed")),
                        Text("2 - 4"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.emoji_food_beverage,
                            size: 30, color: Colors.green),
                        Padding(
                            padding: EdgeInsets.all(10), child: Text("Feed")),
                        Text("2 - 4"),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

// Class Widget Scroll
class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Scroll"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
            Container(
                width: 90,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

// Class Widget sizedBox
class SizedPage extends StatelessWidget {
  const SizedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App SizedBox"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Row(
        children: [
          Text("Text One"),
          SizedBox(width: 100),
          Text("Text Two"),
        ],
      ),
    );
  }
}

// Class Widget ElevatedButtons
class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App ElevatedButtons"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print("Click Me");
          },
          icon: Icon(Icons.ac_unit),
          label: Text("Login"),
          /*
           child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Login"),
            Icon(Icons.ac_unit_outlined),
          ],
        ), */
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrangeAccent,
            padding: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// Class Widget MaterialdButtons
class MaterialdButtons extends StatelessWidget {
  const MaterialdButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App MaterialdButtons"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Center(
            child: MaterialButton(
              shape: Border.all(color: Colors.black),
              onPressed: () {},
              splashColor: Colors.indigo,
              child: Text("Click Me!"),
              color: Colors.red,
              minWidth: 150,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}

// Class Widget FloatingButtons
class FloatingButtons extends StatelessWidget {
  const FloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App FloatingActionButton"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Container(
            width: 400,
            height: 80,
            child: Text("Container One"),
            color: Colors.green,
            margin: EdgeInsets.only(top: 50, bottom: 50),
          ),
          Container(
            width: 400,
            height: 80,
            child: Text("Container One"),
            color: Colors.purple,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            width: 400,
            height: 80,
            child: Text("Container One"),
            color: Colors.pink,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            width: 400,
            height: 80,
            child: Text("Container One"),
            color: Colors.indigo,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            width: 400,
            height: 80,
            child: Text("Container One"),
            color: Colors.deepOrangeAccent,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
        ],
      ),
    );
  }
}

// Class Widget CustomButtons
class CustomButtons extends StatelessWidget {
  const CustomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App CustomButtons"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: const Text("Click"),
          ),
          onTapUp: (tab) {
            print("Tap Up");
          },
          onTapDown: (tab) {
            print("Tap Down");
          },
          onTapCancel: () {
            print("Tap Cancel");
          },
          onDoubleTap: () {
            print("Double Tap");
          },
        ),
      ),
    );
  }
}

// Widget StatefullWidget
class TestStateful extends StatefulWidget {
  const TestStateful({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestStateful> {
  String text = "Siham";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("How Are You $text"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "Hamza";
                });
                print(text);
              },
              child: const Text("Clik Me"),
            ),
          ],
        ),
      ),
    );
  }
}
