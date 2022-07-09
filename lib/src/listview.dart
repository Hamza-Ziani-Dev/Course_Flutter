// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

// Widget StatefullWidget
class ListViews extends StatefulWidget{
  const ListViews ({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return ListViewsState();
  }
}
class ListViewsState extends State<ListViews>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViews "),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Menu 1"),
              onTap: (){
                print("Menu 2");
              },
            ),
            ListTile(
              title: Text("Menu 2"),
              onTap: (){
                print("Menu 2");
              },
            ),
            ListTile(
              title: Text("Menu 3"),
              onTap: (){
                print("Menu 3");
              },
            ),
          ],
        ),
      ),
      body:Container(
        child:  ListView(
          scrollDirection: Axis.vertical, // default
          padding: const EdgeInsets.all(10),
          // physics: const NeverScrollableScrollPhysics(), // no scroll
          children: [
            const Text("Cars :"),
            Container(
              height: 210,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 200,
                    height: 200,
                    child: const Text("Car One"),
                  ),
                  Container(
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                    child: const Text("Car Two"),
                  ),

                ],
              ),),
            const Text("Mobiles :"),
            Container(
              height: 210,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: const Text("Mobile One"),
                  ),
                  Container(
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                    child: const Text("Mobile Two"),
                  ),
                ],
              ),),
            const Text("Colors :"),
            Container(
              height: 210,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: const Text("Color Red"),
                  ),
                  Container(
                    color: Colors.indigo,
                    width: 200,
                    height: 200,
                    child: const Text("Color Indigo"),
                  ),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}