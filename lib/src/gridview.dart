// ignore_for_file: unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Widget StatefullWidget
class GridViews extends StatefulWidget {
  const GridViews({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return GridViewsState();
  }
}

class GridViewsState extends State<GridViews> {
  List moblies = [
    {"name": "Nokia", "screen": "6.2", "cpu": "8 core"},
    {"name": "Oppo", "screen": "6.2", "cpu": "9 core"},
    {"name": "Ultra 8", "screen": "9.2", "cpu": "4 core"},
    {"name": "Hewawi", "screen": "6.2", "cpu": "01"},
    {"name": "Iphone ", "screen": "0.2", "cpu": "10"},
    {"name": "Iphone Pro ", "screen": "20", "cpu": "080"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViews"),
        centerTitle: true,
        //leading: IconButton(icon: const Icon(Icons.ac_unit), onPressed:(){},),
        actions: [
          IconButton(icon: const Icon(Icons.laptop_rounded), onPressed:(){},),
          IconButton(icon: const Icon(Icons.exit_to_app), onPressed:(){},),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Menu 1"),
              onTap: () {
                print("Menu 2");
              },
            ),
            ListTile(
              title: Text("Menu 2"),
              onTap: () {
                print("Menu 2");
              },
            ),
            ListTile(
              title: Text("Menu 3"),
              onTap: () {
                print("Menu 3");
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: moblies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2 // default 1
          ),
          itemBuilder: (context, i) {
            return Container(
              //margin: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: Colors.red,
                title: Text(" title : ${moblies[i]["name"]}",),
                subtitle: Text(" subtitle : ${moblies[i]["screen"]}"),
                trailing: Text("${moblies[i]["cpu"]}"),
              ),
            );
          },),
      ),


      /*  body: Container(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(" title : ${moblies[i]["name"]}",),
                subtitle: Text(" subtitle : ${moblies[i]["screen"]}"),
                trailing: Text("${moblies[i]["cpu"]}"),
              );
            }),
      ),*/
    );
  }
}
