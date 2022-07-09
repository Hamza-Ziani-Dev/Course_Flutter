// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';

// Widget StatefullWidget
class ListTiles extends StatefulWidget{
  const ListTiles({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return ListTilesState();
  }
}
class ListTilesState extends State<ListTiles>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTiles"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text("OppO A73" , style: TextStyle(fontSize: 20),),
              subtitle: Text("oppo"),
              textColor: Colors.blue,
              tileColor: Colors.grey,
              leading: Icon(Icons.phone_iphone),
              trailing: Text("Price 2000\$"),
              onTap: (){
                print("Click Me");
              },
            ),
            ListTile(
              title: Text("Nokia A15" , style: TextStyle(fontSize: 20),),
              subtitle: Text("nokia"),
              textColor: Colors.amber,
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.phone_iphone),
              trailing: Text("Price 1000\$"),
              onTap: (){
                print("Click Me");
              },
            ),
            ListTile(
              title: Text("Iphone 12" , style: TextStyle(fontSize: 20),),
              subtitle: Text("iphone"),
              textColor: Colors.indigo,
              tileColor: Colors.greenAccent,
              leading: Icon(Icons.phone_iphone),
              trailing: Text("Price 4000\$"),
              onTap: (){
                print("Click Me");
              },
            ),
            ListTile(
              title: Text("Sumsung Pro" , style: TextStyle(fontSize: 20),),
              subtitle: Text("sumsung"),
              textColor: Colors.purple,
              tileColor: Colors.tealAccent,
              leading: Icon(Icons.phone_iphone),
              trailing: Text("Price 1900\$"),
              onTap: (){
                print("Click Me");
              },
            ),
          ],
        ),


      ),
    );
  }
}