import 'package:flutter/material.dart';


// Widget StatefullWidget
class DropdownButtons extends StatefulWidget{
  const DropdownButtons({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return DropdownButtonsState();
  }
}

class DropdownButtonsState extends State<DropdownButtons>{
  var CountrySelected ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget"),
        centerTitle: true,
      ),
      drawer:const Drawer(),
      body: Center(
        child: Container(
          color: Colors.blue,
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: DropdownButton(
            icon: const Icon(Icons.ac_unit_outlined, color: Colors.white,),
            iconSize: 30,
            underline: const Divider(
              thickness: 0,
            ),
            dropdownColor: Colors.red,
            isExpanded: true,
            hint: const Text("Selected Your Country",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            items: ["USA","UAE","FR", "EG"].map((e) =>
                DropdownMenuItem(
                  value: e,
                  child: Container(
                    color: Colors.amber,
                    child: Text(e),),)).toList(),
            onChanged: (val){
              setState((){
                CountrySelected = val;
                print(CountrySelected);
              });
            },
            value: CountrySelected,
          ),
        ),
      ),

    );
  }
}