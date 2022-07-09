import 'package:flutter/material.dart';

// Widget StatefullWidget
class RadioList extends StatefulWidget{
  const RadioList({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return RadioListState();
  }
}
class RadioListState extends State<RadioList>{
  var colors  ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioList"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  children: [
                    Text("Choose Colors:",style: TextStyle(fontSize: 20)
                    ),
                    RadioListTile(
                      activeColor: Colors.red,
                      title: Text("ColorRed"),
                      subtitle: Text("Red"),
                      value: "red", groupValue: colors, onChanged:(val){
                      setState((){
                        colors = val;
                      });
                    },),
                    RadioListTile(
                      activeColor: Colors.blue,
                      title: Text("ColorBlue"),
                      subtitle: Text("Blue"),
                      value: "blue", groupValue: colors, onChanged:(val){
                      setState((){
                        colors = val;
                      });
                    },),
                    RadioListTile(
                      activeColor: Colors.green,
                      selected: colors == "green" ? true : false,
                      title: Text("ColorGreen"),
                      subtitle: Text("Green"),
                      value: "green", groupValue: colors, onChanged:(val){
                      setState((){
                        colors = val;
                      });
                    },),
                    /*
               Row(children: [
                 Text("Green"),
                 Radio(
                   value: "Green",
                   groupValue:colors,
                   onChanged:(val){
                   setState((){
                     colors = val;
                   });
                 },)
               ],),
               Row(children: [
                 Text("Red"),
                 Radio(
                   value: "red",
                   groupValue:colors,
                   onChanged:(val){
                     setState((){
                       colors = val;
                     });
                   },)
               ],),
               Row(children: [
                 Text("Blue"),
                 Radio(
                   value: "blue",
                   groupValue:colors,
                   onChanged:(val){
                     setState((){
                       colors = val;
                     });
                   },)
               ],),
                */
                  ]))),

    );
  }
}