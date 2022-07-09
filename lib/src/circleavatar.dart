
import 'package:flutter/material.dart';

// Widget StatefullWidget
class CircleAvatars extends StatefulWidget{
  const CircleAvatars({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return CircleAvatarsState();
  }
}
class CircleAvatarsState extends State<CircleAvatars>{
  bool red = false ;
  bool green = false ;
  bool blue = false ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatars"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: const Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.pink,
          child: Text("Circle"),

        ),
      ),

    );
  }
}