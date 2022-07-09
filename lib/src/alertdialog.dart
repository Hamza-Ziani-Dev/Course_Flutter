
// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

// Widget StatefullWidget
class AlertDialogs extends StatefulWidget{
  const AlertDialogs ({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return AlertDialogsState();
  }
}
class AlertDialogsState extends State<AlertDialogs >{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("AlertDialogs "),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            child: ElevatedButton(
                child: const Text("Show Alert Dialog"),
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return const AlertDialog(
                      titlePadding: EdgeInsets.only(top:20, left: 20),
                      contentTextStyle: TextStyle(color: Colors.pink),
                      titleTextStyle: TextStyle(color: Colors.amber),
                      title: Text("Message"),
                      content: Text("Are You Fine"),
                    );
                  });
                }
            ),
          ),
        )
    );
  }
}