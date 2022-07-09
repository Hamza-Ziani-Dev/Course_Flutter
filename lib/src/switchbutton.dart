// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Widget StatefullWidget
class SwitchButton extends StatefulWidget{
  const SwitchButton({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return SwitchButtonState();
  }
}
class SwitchButtonState extends State<SwitchButton>{
  bool notify = false ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchButton"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: SwitchListTile(
          title: Text("Choose The Notify"),
          subtitle: Text("Notify"),
          isThreeLine: true,
          controlAffinity:ListTileControlAffinity.trailing,
          secondary: Icon(Icons.notification_add, color: Colors.green,),
          value: notify,
          onChanged:(val){
            setState((){
              notify = val;
            });
          },

        ) ,
        /*
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Choose The Notify"),
          Switch(
            activeColor: Colors.green,
            activeTrackColor: Colors.indigo,
            inactiveTrackColor: Colors.black87,
            inactiveThumbColor: Colors.red,
            value: notify,
            onChanged:(val){
            setState((){
              notify = val;
            });
          },)
        ],),
         */
      ),

    );
  }
}