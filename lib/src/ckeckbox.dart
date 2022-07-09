// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';

// Widget StatefullWidget
class CkeckBox extends StatefulWidget{
  const CkeckBox({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return CkeckBoxState();
  }
}
class CkeckBoxState extends State<CkeckBox>{
  bool red = false ;
  bool green = false ;
  bool blue = false ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("CkeckBox"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.dehaze),
              onTap: () {
                print("About");
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: const Icon(Icons.contact_page),
              onTap: () {
                print("Contact");
              },
            ),
            ListTile(
              title: const Text("Help"),
              leading: const Icon(Icons.help),
              onTap: () {
                print("Help");
              },
            ),
            ListTile(
              title: const Text("Logout"),
              leading: const Icon(Icons.logout),
              onTap: () {
                print("Logout");
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  children: [
                    Text("Choose Colors:",style: TextStyle(fontSize: 20)
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.all(10),
                      isThreeLine: true,
                      activeColor: Colors.green,
                      secondary: Icon(Icons.colorize),
                      selected: green,
                      title: Text("Color Green", style: TextStyle(color: Colors.green),),
                      subtitle: Text("green", style: TextStyle(color: Colors.grey),),
                      value: green, onChanged:(val){
                      setState((){
                        green = val!;
                      });
                    },),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.all(10),
                      isThreeLine: true,
                      activeColor: Colors.red,
                      secondary: Icon(Icons.colorize),
                      selected: red,
                      title: Text("Color Red", style: TextStyle(color: Colors.red),),
                      subtitle: Text("red" , style: TextStyle(color: Colors.grey)),
                      value: red, onChanged:(val){
                      setState((){
                        red = val!;
                      });
                    },),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.trailing, // default
                      contentPadding: EdgeInsets.all(10),
                      isThreeLine: true,
                      activeColor: Colors.blue,
                      secondary: Icon(Icons.colorize),
                      selected: blue,
                      title: Text("Color Blue", style: TextStyle(color: Colors.blue),),
                      subtitle: Text("blue",  style: TextStyle(color: Colors.grey)),
                      value: blue, onChanged:(val){
                      setState((){
                        blue = val!;
                      });
                    },)

                    /*
               Row(
                 children: [
                   Text("Red"),
                   Checkbox(value: red, activeColor: Colors.red, onChanged:(val){
                        setState((){
                          red = val!;
                          print(red);
                        });
                   })
                 ],
               ),
               Row(
                 children: [
                   Text("Green"),
                   Checkbox(value: green,activeColor: Colors.green, onChanged:(val){
                     setState((){
                       green = val!;
                       print(green);
                     });
                   })
                 ],
               ),
               Row(
                 children: [
                   Text("Blue"),
                   Checkbox(value: blue,  activeColor: Colors.blue, onChanged:(val){
                     setState((){
                       blue = val!;
                       print(blue);
                     });
                   })
                 ],
               ),
               */

                  ]))),

    );
  }
}